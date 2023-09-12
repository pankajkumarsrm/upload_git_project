
package com.tech.blog.entities;

/**
 *
 * @author PANKAJ KUMAR GUPTA
 */
public class Message {
    private String content;
    private String type;
    private String cssClass;

    
    //  create a constructor (Alt+insert) btn select all enter 
    public Message(String content, String type, String cssClass) {
        this.content = content;
        this.type = type;
        this.cssClass = cssClass;
    }
    
    // getters and setters (Alt+insert) btn select all enter 

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCssClass() {
        return cssClass;
    }

    public void setCssClass(String cssClass) {
        this.cssClass = cssClass;
    }
    
    
    
}
