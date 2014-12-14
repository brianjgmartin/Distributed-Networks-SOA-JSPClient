package org.me.memory;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;

/**
 * <p>
 * Java class for transferPoints complex type.
 *
 * <p>
 * The following schema fragment specifies the expected content contained within
 * this class.
 *
 * <pre>
 * &lt;complexType name="transferPoints">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="mypoints" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="username" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 *
 *
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "transferPoints", propOrder = {
    "mypoints",
    "username"
})
public class TransferPoints {

    protected int mypoints;
    protected String username;

    /**
     * Gets the value of the mypoints property.
     *
     */
    public int getMypoints() {
        return mypoints;
    }

    /**
     * Sets the value of the mypoints property.
     *
     */
    public void setMypoints(int value) {
        this.mypoints = value;
    }

    /**
     * Gets the value of the username property.
     *
     * @return possible object is {@link String }
     *
     */
    public String getUsername() {
        return username;
    }

    /**
     * Sets the value of the username property.
     *
     * @param value allowed object is {@link String }
     *
     */
    public void setUsername(String value) {
        this.username = value;
    }

}
