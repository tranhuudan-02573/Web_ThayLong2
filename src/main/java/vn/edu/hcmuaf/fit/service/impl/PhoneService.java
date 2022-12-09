package vn.edu.hcmuaf.fit.service.impl;

import vn.edu.hcmuaf.fit.dao.impl.phone.*;
import vn.edu.hcmuaf.fit.dao.impl.review.ReviewDAO;
import vn.edu.hcmuaf.fit.model.phone.*;

import javax.annotation.ManagedBean;
import javax.inject.Inject;
import java.util.*;

@ManagedBean
public class PhoneService {

    //    @Inject
    PhoneDAO phoneDAO ;
    //    @Inject
    ImageDAO imageDAO ;
    @Inject
    PhoneCapDAO phoneCapDAO;
    @Inject
    PhoneSpecDAO phoneSpecDAO;
    @Inject
    PhoneColorDAO phoneColorDAO;
    @Inject
    PhonePromotDAO phonePromotDAO;
    @Inject
    ReviewDAO reviewDAO;

    public List<Phone> getAll() {
        return phoneDAO.getAll();
    }

    public Phone save(Phone phone) {
        int id = phoneDAO.savePhone(phone);
        if (phone.getImageList() == null)
            phone.setImageList(new HashSet<>());
        if (phone.getColorList() == null)
            phone.setColorList(new HashSet<>());

        if (phone.getCapList() == null)
            phone.setCapList(new HashSet<>());
        if (phone.getSpecList() == null)
            phone.setSpecList(new HashSet<>());
        if (phone.getPromotList() == null)
            phone.setPromotList(new HashSet<>());


        imageDAO.save(phone.getImageList(), id);
        phoneColorDAO.save(phone.getColorList(), id);
        phoneCapDAO.save(phone.getCapList(), id);
        phoneSpecDAO.save(phone.getSpecList(), id);
        phonePromotDAO.save(phone.getPromotList(), id);

        return phoneDAO.getPhoneById(id);
    }

    public Phone update(Phone phone) {
        Phone old = new PhoneDAO("phones").getPhoneById(phone.getId());
        if (phone.getImageList() == null)
            phone.setImageList(new HashSet<>());
        if (phone.getColorList() == null)
            phone.setColorList(new HashSet<>());
        if (phone.getCapList() == null)
            phone.setCapList(new HashSet<>());
        if (phone.getSpecList() == null)
            phone.setSpecList(new HashSet<>());
        if (phone.getPromotList() == null)
            phone.setPromotList(new HashSet<>());


        imageDAO.updateImageList(old.getImageList(), phone.getImageList());
        phoneColorDAO.updatePhoneColorList(old.getColorList(), phone.getColorList());
        phoneSpecDAO.updateSpecList(old.getSpecList(), phone.getSpecList());
        phonePromotDAO.updatePromotList(old.getPromotList(), phone.getPromotList());
        phoneCapDAO.updateCapList(old.getCapList(), phone.getCapList());

        phoneDAO.updatePhone(phone);
        return phoneDAO.getPhoneById(phone.getId());
    }

    public void delete(Phone phone) {
        if (phone.getImageList() == null)
            phone.setImageList(new HashSet<>());
        if (phone.getColorList() == null)
            phone.setColorList(new HashSet<>());
        if (phone.getCapList() == null)
            phone.setCapList(new HashSet<>());
        if (phone.getSpecList() == null)
            phone.setSpecList(new HashSet<>());
        if (phone.getPromotList() == null)
            phone.setPromotList(new HashSet<>());
//        if (phone.getReviews() == null)
//            phone.setReviews(new HashMap<>());

        imageDAO.deleteImageList(phone.getImageList());
        phoneColorDAO.deletePhoneColor(phone.getColorList());
        phoneSpecDAO.deletePhoneSpec(phone.getSpecList());
        phoneCapDAO.deletePhoneCap(phone.getCapList());
        phonePromotDAO.deletePhonePromot(phone.getPromotList());

//        for (Integer r : phone.getReviews().keySet()
//        ) {
//            reviewDAO.deleteReview(phone.getReviews().get(r));
//            reviewDAO.deleteReviewList(phone.getReviews().get(r).getReplyList());
//        }


        phoneDAO.deletePhone(phone);
    }

    public static void main(String[] args) {
//        System.out.println(new PhoneService().getAll());
        Phone p = new Phone();
        p.setName("kkkk121");
        System.out.println(new PhoneService().save(p));
    }

}
