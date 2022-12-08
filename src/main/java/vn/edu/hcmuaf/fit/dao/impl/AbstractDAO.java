package vn.edu.hcmuaf.fit.dao.impl;

import org.jdbi.v3.core.mapper.reflect.BeanMapper;
import org.jdbi.v3.core.result.ResultBearing;
import org.jdbi.v3.core.result.RowView;
import vn.edu.hcmuaf.fit.dao.GenericDAO;
import vn.edu.hcmuaf.fit.dao.impl.phone.*;
import vn.edu.hcmuaf.fit.dao.impl.review.ReviewDAO;
import vn.edu.hcmuaf.fit.db.JDBiConnector;
import vn.edu.hcmuaf.fit.model.user.*;
import vn.edu.hcmuaf.fit.model.phone.Cap;
import vn.edu.hcmuaf.fit.model.phone.PhoneCap;
import vn.edu.hcmuaf.fit.model.order.Code;
import vn.edu.hcmuaf.fit.model.order.Order;
import vn.edu.hcmuaf.fit.model.order.OrderDetail;
import vn.edu.hcmuaf.fit.model.phone.*;
import vn.edu.hcmuaf.fit.model.review.Review;
import vn.edu.hcmuaf.fit.model.phone.PhoneSpec;
import vn.edu.hcmuaf.fit.model.phone.Spec;
import vn.edu.hcmuaf.fit.model.phone.SpecType;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import static java.util.stream.Collectors.toList;

public class AbstractDAO<T> implements GenericDAO<T> {
    protected final String SELECT_ALL_PHONE =
            "select  p.capId p_capId,p.id p_id, p.created_by p_created_by, p.name p_name, p.typeId p_typeId, p.price p_price, p.content p_content, p.total p_total, p.thumbnail p_thumbnail, p.desc p_desc , p.stateId p_stateId, p.brandId p_brandId, p.modelId p_modelId, p.saleId p_saleId,p.created_at p_created_at,p.updated_at p_updated_at,  pc.colorId pc_colorId, pc.phoneId pc_phoneId, pc.img pc_img, pc.total pc_total, pc.created_at pc_created_at,pc.updated_at pc_updated_at, t.id t_id, t.name t_name, t.created_at t_created_at, t.updated_at t_updated_at, sl.id sl_id, sl.name sl_name, sl.created_at sl_created_at, sl.updated_at sl_updated_at,sl.end_at sl_end_at,sl.start_at sl_start_at, img.id img_id, img.link img_link, img.desc img_desc, img.phoneId img_phoneId, img.created_at img_created_at, img.updated_at img_updated_at, m.id m_id, m.name m_name, m.img m_img, m.brandId m_brandId, m.created_at m_created_at, m.updated_at m_updated_at, b.id b_id,b.name b_name, b.logo b_logo, b.country b_country, b.created_at b_created_at, b.updated_at b_updated_at, pp.promotId pp_promotId, pp.phoneId pp_phoneId, pp.created_at pp_created_at, pp.updated_at pp_updated_at, pp.end_at pp_end_at,pp.start_at pp_start_at,pr.id pr_id, pr.name pr_name, pr.created_at pr_created_at, pr.updated_at pr_updated_at,ps.value ps_value, ps.specId ps_specId, ps.phoneId ps_phoneId,ps.created_at ps_created_at, ps.updated_at ps_updated_at,sp.id sp_id,sp.name sp_name, sp.spec_typeId sp_spec_typeId, sp.created_at sp_created_at, sp.updated_at sp_updated_at,spt.id spt_id,spt.name spt_name, spt.created_at spt_created_at, spt.updated_at spt_updated_at,pca.capId pca_capId ,pca.phoneId pca_phoneId,pca.created_at pca_created_at,pca.updated_at pca_updated_at,\n" +
                    "c.id c_id,c.cap c_cap,c.name c_name,c.created_at c_created_at, c.updated_at c_updated_at,prw.id prw_id,prw.content prw_content,prw.userId prw_userId,prw.phoneId prw_phoneId,prw.star prw_star,prw.created_at prw_created_at,prw.updated_at prw_updated_at,prw.title prw_title,prw.customerId prw_customerId,prw.`like` prw_like,prw.replyId prw_replyId\n\n" +
                    ", cls.id cls_id,cls.name cls_name,cls.created_at cls_created_at,cls.updated_at cls_updated_at  from phones p\n" +
                    "LEFT JOIN types t on p.typeId = t.id\n" +
                    "LEFT JOIN sales sl on p.saleId = sl.id\n" +

                    "LEFT JOIN models m on p.modelId = m.id\n" +
                    "LEFT JOIN brands b on p.brandId = b.id\n" +
                    "LEFT JOIN phone_promot pp on p.id = pp.phoneId\n" +
                    "LEFT JOIN phone_color pc on p.id = pc.phoneId\n" +
                    "LEFT JOIN images img on p.id = img.phoneId \n" +
                    "left join promots pr on pp.promotId = pr.id\n" +
                    "left join colors cls on pc.colorId = cls.id\n" +
                    "left join phone_spec ps on p.id = ps.phoneId\n" +
                    "left join specs sp on ps.specId = sp.id\n" +
                    "left join spec_types spt on sp.spec_typeId = spt.id\n" +
                    "left join phone_cap pca on p.id = pca.phoneId\n" +
                    "left join caps c on pca.capId = c.id\n"
                    + " left join phone_review prw on p.id = prw.phoneId  " +
                    "where 1=1 ";
    protected final String SELECT_ALL_ORDER = "select o.id o_id," +
            "o.userId o_userId,o.customerId o_customerId, o.order_stateId o_order_stateId," +
            "o.created_at o_created_at,o.updated_at o_updated_at," +
            "o.payment o_payment, o.total o_total, o.codeId o_codeId," +
            "od.quantity od_quantity,od.price od_price,od.discount od_discount," +
            " od.phoneId od_phoneId,od.orderId od_orderId,od.created_at od_created_at," +
            "od.updated_at od_updated_at,c.id c_id,c.code c_code," +
            "c.value c_value,c.created_at c_created_at,c.updated_at c_updated_at," +
            "c.start_at c_start_at,c.end_at c_end_at\n" +
            " from `orders` o\n" +
            "left join order_detail od on o.id = od.orderId\n" +
            "left join codes c on o.codeId = c.id where 1=1 ";
    protected final String SELECT_ALL_USER = "select u.permissionId u_permissionId,u.id u_id,u.phone u_phone,u.`password` u_password, u.name u_name,u.address u_address,u.gender u_gender,u.email u_email,u.avatar u_avartar,u.created_at u_created_at,u.updated_at u_updated_at,u.active u_active,\n" +
            "p.id p_id,p.licensed p_licensed,p.name p_name, p.created_at p_created_at, p.updated_at p_updated_at,pd.permissionId pd_permissionId,pd.check_action pd_check_action,pd.created_at pd_created_at,pd.updated_at pd_updated_at,pd.action_code pd_action_code,pd.action_name pd_action_name\n" +
            " from users u\n" +
            "left join permissions p on u.permissionId = p.id\n" +
            "left join permission_detail pd on p.id = pd.permissionId where 1=1  ";

    @Override
    public List<T> list(String sql, String table, Class<T> t, Map<String, Object> o) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from <TABLE> where 1=1 " + sql).define("TABLE", table).bindMap(o).mapToBean(t).list();
        });
    }

    public List<Order> joinOrder(String sql, Class<T> t, Map<String, Object> o) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery(SELECT_ALL_ORDER + sql)
                    .bindMap(o)
                    .registerRowMapper(BeanMapper.factory(Order.class, "o"))
                    .registerRowMapper(BeanMapper.factory(OrderDetail.class, "od"))
                    .registerRowMapper(BeanMapper.factory(Code.class, "c"))

                    .reduceRows((Map<Long, Order> map, RowView rowView) -> {
                        Order order = map.computeIfAbsent(
                                rowView.getColumn("o_id", Long.class),
                                id -> rowView.getRow(Order.class));
                        if (rowView.getColumn("c_id", Long.class) != null) {
                            order.setCode(rowView.getRow(Code.class));
                        }
                        if (rowView.getColumn("od_orderId", Integer.class) != null) {
                            OrderDetail od = rowView.getRow(OrderDetail.class);
                            od.setPhone(new PhoneDAO().getPhoneById(od.getPhoneId()));
                            order.addOrderDetail(od);
                        }
                    }).collect(toList());
        });
    }

    public List<User> joinUser(String sql, Class<T> t, Map<String, Object> o) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery(SELECT_ALL_USER + sql)
                    .bindMap(o)
                    .registerRowMapper(BeanMapper.factory(User.class, "u"))
                    .registerRowMapper(BeanMapper.factory(Permission.class, "p"))
                    .registerRowMapper(BeanMapper.factory(PermissionDetail.class, "pd"))
                    .reduceRows((Map<Long, User> map, RowView rowView) -> {
                        User user = map.computeIfAbsent(
                                rowView.getColumn("u_id", Long.class),
                                id -> rowView.getRow(User.class));
                        if (rowView.getColumn("p_id", Long.class) != null) {
                            Permission p = rowView.getRow(Permission.class);
                            if (rowView.getColumn("pd_permissionId", Long.class) != null) {

                                p.addAction(rowView.getRow(PermissionDetail.class));
                            }
                            user.setPermission(p);
                        }
                    }).collect(toList());
        });
    }


    public List<Phone> joinPhone(String sql, Class<T> t, Map<String, Object> o) {
        return JDBiConnector.get().withHandle(handle -> {
            return handle.createQuery(SELECT_ALL_PHONE + sql)
                    .bindMap(o)
                    .registerRowMapper(BeanMapper.factory(Sale.class, "sl"))
                    .registerRowMapper(BeanMapper.factory(Type.class, "t"))
                    .registerRowMapper(BeanMapper.factory(Model.class, "m"))
                    .registerRowMapper(BeanMapper.factory(Brand.class, "b"))
                    .registerRowMapper(BeanMapper.factory(Promot.class, "b"))
                    .registerRowMapper(BeanMapper.factory(PhoneColor.class, "pc"))
                    .registerRowMapper(BeanMapper.factory(Color.class, "cls"))
                    .registerRowMapper(BeanMapper.factory(Image.class, "img"))
                    .registerRowMapper(BeanMapper.factory(Phone.class, "p"))
                    .registerRowMapper(BeanMapper.factory(PhonePromot.class, "pp"))
                    .registerRowMapper(BeanMapper.factory(Promot.class, "pr"))
                    .registerRowMapper(BeanMapper.factory(Spec.class, "sp"))
                    .registerRowMapper(BeanMapper.factory(SpecType.class, "spt"))
                    .registerRowMapper(BeanMapper.factory(PhoneSpec.class, "ps"))
                    .registerRowMapper(BeanMapper.factory(PhoneCap.class, "pca"))
                    .registerRowMapper(BeanMapper.factory(Review.class, "prw"))
                    .registerRowMapper(BeanMapper.factory(Cap.class, "c"))
                    .reduceRows((Map<Long, Phone> map, RowView rowView) -> {
                        Phone phone = map.computeIfAbsent(
                                rowView.getColumn("p_id", Long.class),
                                id -> rowView.getRow(Phone.class));
                        if (rowView.getColumn("p_capId", Long.class) != null) {
                            phone.setCap(rowView.getRow(Cap.class));
                        }
                        if (rowView.getColumn("t_id", Long.class) != null) {
                            phone.setType(rowView.getRow(Type.class));
                        }
                        if (rowView.getColumn("sl_id", Long.class) != null) {
                            phone.setSale(rowView.getRow(Sale.class));
                        }
                        if (rowView.getColumn("m_id", Long.class) != null) {
                            phone.setModel(rowView.getRow(Model.class));
                        }
                        if (rowView.getColumn("b_id", Long.class) != null) {
                            phone.setBrand(rowView.getRow(Brand.class));
                        }
                        if (rowView.getColumn("pc_colorId", String.class) != null && rowView.getColumn("cls_id", String.class) != null) {

                            PhoneColor pc = rowView.getRow(PhoneColor.class);
                            pc.setColor(rowView.getRow(Color.class));
                            phone.addColor(pc);
                        }
                        if (rowView.getColumn("img_id", Integer.class) != null) {
                            phone.addImage(rowView.getRow(Image.class));
                        }
                        if (rowView.getColumn("pp_promotId", Integer.class) != null && rowView.getColumn("pr_id", Integer.class) != null) {
                            PhonePromot pp = rowView.getRow(PhonePromot.class);
                            pp.setPromot(rowView.getRow(Promot.class));
                            phone.addPromot(pp);
                        }
                        if (rowView.getColumn("ps_specId", Integer.class) != null && rowView.getColumn("sp_id", Integer.class) != null && rowView.getColumn("spt_id", Integer.class) != null) {
                            PhoneSpec ps = rowView.getRow(PhoneSpec.class);
                            Spec sp = rowView.getRow(Spec.class);
                            sp.setSpecType(rowView.getRow(SpecType.class));
                            ps.setSpec(sp);
                            phone.addSpec(ps);
                        }
                        if (rowView.getColumn("pca_capId", Integer.class) != null && rowView.getColumn("c_id", Integer.class) != null) {
                            PhoneCap pc = rowView.getRow(PhoneCap.class);
                            Cap c = rowView.getRow(Cap.class);
                            pc.setCap(c);
                            phone.addCap(pc);
                        }
                        if (rowView.getColumn("prw_id", Long.class) != null) {
                            Review r = rowView.getRow(Review.class);

                            if (r.getReplyId() == null) {
                                if (!(phone.getReviews().containsKey(r.getId())))
                                    phone.addReview(r.getId(), r);
                            } else {
                                if (phone.getReviews().containsKey(new ReviewDAO().getO(r).getId())) {
                                    phone.getReviews().get(new ReviewDAO().getO(r).getId()).addReview(r);
                                } else {
                                    Review rs = new ReviewDAO().getO(r);
                                    rs.addReview(r);
                                    phone.addReview(new ReviewDAO().getO(r).getId(), rs);
                                }
                            }
                        }
                    }).collect(toList());
        });
    }


    @Override
    public T get(String sql, String table, Class<T> t, Map<String, Object> o) {

        List<T> l = list(sql, table, t, o);

        if (l.size() > 1 || l.isEmpty()) return null;

        return l.get(0);


    }


    @Override
    public int insertWithId(String sql, T t) {
        return JDBiConnector.get().withHandle(handle -> {
            ResultBearing rb = handle.createUpdate(sql).bindBean("t", t)
                    .executeAndReturnGeneratedKeys("id");
            Object id = rb.mapToMap().findOnly().get("generated_key");
            return ((BigInteger) id).intValue();
        });
    }

    @Override
    public void insert(String sql, T t) {
        JDBiConnector.get().useHandle(handle -> {
            handle.createUpdate(sql).bindBean("t", t)
                    .execute();
        });
    }

    @Override
    public void update(String sql, T t) {
        JDBiConnector.get().useHandle(handle -> {
            handle.createUpdate(sql).bindBean("t", t)
                    .execute();
        });
    }


    @Override
    public void delete(String sql, T t) {
        update(sql, t);
    }

    public static void main(String[] args) {

        System.out.println(new AbstractDAO<Order>().joinOrder("", Order.class, null).get(0));
//        System.out.println(new AbstractDAO<User>().list("","users",User.class,null));
//        System.out.println(new AbstractDAO<User>().joinUser("", User.class, null).get(0));
//        System.out.println(new AbstractDAO<Phone>().joinPhone("", Phone.class, null).get(0).getColorList());
//        System.out.println(new AbstractDAO<>().joinOrder("",Order.class,null));
    }
}
