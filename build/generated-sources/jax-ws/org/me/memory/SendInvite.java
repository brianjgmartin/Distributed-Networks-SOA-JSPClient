package org.me.memory;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;

/**
 * <p>
 * Java class for sendInvite complex type.
 *
 * <p>
 * The following schema fragment specifies the expected content contained within
 * this class.
 *
 * <pre>
 * &lt;complexType name="sendInvite">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="friendUsername" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 *
 *
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "sendInvite", propOrder = {
    "friendUsername"
})
public class SendInvite {

    protected String friendUsername;

    /**
     * Gets the value of the friendUsername property.
     *
     * @return possible object is {@link String }
     *
     */
    public String getFriendUsername() {
        return friendUsername;
    }

    /**
     * Sets the value of the friendUsername property.
     *
     * @param value allowed object is {@link String }
     *
     */
    public void setFriendUsername(String value) {
        this.friendUsername = value;
    }

}
