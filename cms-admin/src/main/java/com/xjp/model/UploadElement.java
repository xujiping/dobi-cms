package com.xjp.model;

import javax.persistence.*;

@Table(name = "upload_element")
public class UploadElement {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "upload_id")
    private Integer uploadId;

    @Column(name = "element_id")
    private Integer elementId;

    /**
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return upload_id
     */
    public Integer getUploadId() {
        return uploadId;
    }

    /**
     * @param uploadId
     */
    public void setUploadId(Integer uploadId) {
        this.uploadId = uploadId;
    }

    /**
     * @return element_id
     */
    public Integer getElementId() {
        return elementId;
    }

    /**
     * @param elementId
     */
    public void setElementId(Integer elementId) {
        this.elementId = elementId;
    }
}