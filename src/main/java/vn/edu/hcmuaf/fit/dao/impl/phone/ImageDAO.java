package vn.edu.hcmuaf.fit.dao.impl.phone;

import vn.edu.hcmuaf.fit.dao.impl.AbstractDAO;
import vn.edu.hcmuaf.fit.model.phone.Image;

import javax.annotation.ManagedBean;
import java.math.BigInteger;
import java.sql.Timestamp;
import java.util.*;

@ManagedBean
public class ImageDAO extends AbstractDAO<Image> {
    public int insertImage(Image img, int id) {
        img.setPhoneId(id);
        img.setCreated_at(new Timestamp(System.currentTimeMillis()));
        img.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        return insertWithId("insert into images (link,`desc`,phoneId,created_at,updated_at) values(:t.link,:t.desc,:t.phoneId,:t.created_at,:t.updated_at)",
                img);
    }

    public void updateImageList(Set<Image> old, Set<Image> imgs) {
        if (old.size() < imgs.size()) {
            for (Image img : imgs) {
                if (checkSame(old, img.getId())) {
                    updateImage(img);
                } else {
                    insertImage(img, img.getPhoneId());
                }

            }
        }

        if (old.size() > imgs.size()) {
            for (Image img : old) {
                if (checkSame(imgs, img.getId())) {
                    updateImage(img);
                } else {
                    deleteImage(img);
                }

            }
        }

        if (old.size() == imgs.size()) {
            for (Image img : imgs) {
                updateImage(img);
            }
        }
    }

    public void deleteImageList(Set<Image> s) {

        List<Image> imgs = new ArrayList<>(s);
        for (Image img : imgs
        ) {
            deleteImage(img);
        }

    }

    public void updateImage(Image i) {
        i.setUpdated_at(new Timestamp(System.currentTimeMillis()));
        update("update images set link = :t.link, `desc`=:t.desc,updated_at = :t.updated_at where id = :t.id", i);

    }

    public void deleteImage(Image i) {
        delete("delete from images where id = :t.id", i);
    }

    public boolean checkSame(Set<Image> s, int id) {
        for (Image img : s) {

            if (img.getId() == id) return true;
        }
        return false;
    }

    public static void main(String[] args) {

        Map<String, Object> o = new HashMap<>();
        o.put("phoneId", 1);
        List<Image> l = new ImageDAO().list(" and phoneId =:phoneId", "images", Image.class, o);
        Set<Image> s = new HashSet<>(l);
        Set<Image> s2 = s;
        Image image = new Image();
        image.setDesc("dasd");
        s2.add(image);

        for (Image img : s2
        ) {
            img.setLink("abc");
        }


        new ImageDAO().updateImageList(s, s2);
    }

    public void save(Set<Image> imageList, int id) {
        if (!imageList.isEmpty()) {

            for (Image img : imageList) {
                insertImage(img, id);
            }
        }
    }
}
