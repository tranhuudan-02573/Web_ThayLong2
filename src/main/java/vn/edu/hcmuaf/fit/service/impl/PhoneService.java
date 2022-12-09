package vn.edu.hcmuaf.fit.service.impl;

import vn.edu.hcmuaf.fit.dao.impl.phone.*;
import vn.edu.hcmuaf.fit.dao.impl.review.ReviewDAO;
import vn.edu.hcmuaf.fit.model.phone.*;

import javax.annotation.ManagedBean;
import javax.inject.Inject;
import java.util.*;

@ManagedBean
public class PhoneService {

    //        @Inject
    PhoneDAO phoneDAO = new PhoneDAO("phones");
    //        @Inject
    ImageDAO imageDAO = new ImageDAO("images");
    //    @Inject
    PhoneCapDAO phoneCapDAO = new PhoneCapDAO("phone_cap");
    //    @Inject
    PhoneSpecDAO phoneSpecDAO = new PhoneSpecDAO("phone_spec");
    //    @Inject
    PhoneColorDAO phoneColorDAO = new PhoneColorDAO("phone_color");
    //    @Inject
    PhonePromotDAO phonePromotDAO = new PhonePromotDAO("phone_promot");
    //    @Inject
//    ReviewDAO reviewDAO = new ReviewDAO("phone_review");

    public List<Phone> getAll() {
        return phoneDAO.getAll();
    }

    public Phone get(Phone p) {
        return phoneDAO.getPhoneById(p.getId());

    }

    public Phone save(Phone phone) {
        int id = phoneDAO.savePhone(phone);
        System.out.println(id   );
        if (phone.getImageList() != null)
            imageDAO.save(phone.getImageList(), id);
        if (phone.getColorList() == null)
            phoneColorDAO.save(phone.getColorList(), id);
        if (phone.getCapList() == null)
            phoneCapDAO.save(phone.getCapList(), id);
        if (phone.getSpecList() == null)
            phoneSpecDAO.save(phone.getSpecList(), id);
        if (phone.getPromotList() == null)
            phonePromotDAO.save(phone.getPromotList(), id);
        return phoneDAO.getPhoneById(id);
    }

    public Phone update(Phone phone) {
        Phone old = new PhoneDAO("phones").getPhoneById(phone.getId());
        if (phone.getImageList() == null)
            imageDAO.updateImageList(old.getImageList(), phone.getImageList());
        if (phone.getColorList() == null)
            phoneColorDAO.updatePhoneColorList(old.getColorList(), phone.getColorList());
        if (phone.getCapList() == null)
            phoneCapDAO.updateCapList(old.getCapList(), phone.getCapList());

        if (phone.getSpecList() == null)
            phoneSpecDAO.updateSpecList(old.getSpecList(), phone.getSpecList());

        if (phone.getPromotList() == null)
            phonePromotDAO.updatePromotList(old.getPromotList(), phone.getPromotList());


        phoneDAO.updatePhone(phone);
        return phoneDAO.getPhoneById(phone.getId());
    }

    public void delete(Phone phone) {
        if (phone.getImageList() == null)
            imageDAO.deleteImageList(phone.getImageList());
        if (phone.getColorList() == null)
            phoneColorDAO.deletePhoneColor(phone.getColorList());
        if (phone.getCapList() == null)
            phoneSpecDAO.deletePhoneSpec(phone.getSpecList());
        if (phone.getSpecList() == null)
            phoneCapDAO.deletePhoneCap(phone.getCapList());
        if (phone.getPromotList() == null)
            phonePromotDAO.deletePhonePromot(phone.getPromotList());
//        if (phone.getReviews() == null)
//            phone.setReviews(new HashMap<>());
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
