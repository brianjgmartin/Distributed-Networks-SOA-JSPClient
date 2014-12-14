package org.me.memory;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;

/**
 * <p>
 * Java class for delete complex type.
 *
 * <p>
 * The following schema fragment specifies the expected content contained within
 * this class.
 *
 * <pre>
 * &lt;complexType name="delete">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="memory" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 *
 *
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "delete", propOrder = {
    "memory"
})
public class Delete {

    protected String memory;

    /**
     * Gets the value of the memory property.
     *
     * @return possible object is {@link String }
     *
     */
    public String getMemory() {
        return memory;
    }

    /**
     * Sets the value of the memory property.
     *
     * @param value allowed object is {@link String }
     *
     */
    public void setMemory(String value) {
        this.memory = value;
    }

}
