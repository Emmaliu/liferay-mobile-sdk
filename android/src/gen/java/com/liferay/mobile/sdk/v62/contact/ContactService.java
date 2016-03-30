package com.liferay.mobile.sdk.v62.contact;

import com.liferay.mobile.sdk.Call;
import com.liferay.mobile.sdk.v2.JsonObject;
import com.liferay.mobile.sdk.v2.Param;
import com.liferay.mobile.sdk.v2.Path;
import java.lang.Integer;
import org.json.JSONArray;
import org.json.JSONObject;

@Path("/contact")
public interface ContactService {
  @Path("/get-contact")
  Call<JSONObject> getContact(@Param("contactId") long contactId);

  @Path("/get-contacts")
  Call<JSONArray> getContacts(@Param("classNameId") long classNameId, @Param("classPK") long classPK, @Param("start") int start, @Param("end") int end, @JsonObject(name = "orderByComparator", className = "com.liferay.portal.kernel.util.OrderByComparator") JSONObject orderByComparator);

  @Path("/get-contacts-count")
  Call<Integer> getContactsCount(@Param("classNameId") long classNameId, @Param("classPK") long classPK);
}
