
package org.me.memory;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the org.me.memory package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _Register_QNAME = new QName("http://memory.me.org/", "register");
    private final static QName _GetUserID_QNAME = new QName("http://memory.me.org/", "getUserID");
    private final static QName _ViewMemories_QNAME = new QName("http://memory.me.org/", "viewMemories");
    private final static QName _ViewInviteSender_QNAME = new QName("http://memory.me.org/", "viewInviteSender");
    private final static QName _ViewInvitesResponse_QNAME = new QName("http://memory.me.org/", "viewInvitesResponse");
    private final static QName _AddMemory_QNAME = new QName("http://memory.me.org/", "addMemory");
    private final static QName _TestResponse_QNAME = new QName("http://memory.me.org/", "testResponse");
    private final static QName _AddResource_QNAME = new QName("http://memory.me.org/", "addResource");
    private final static QName _RegisterResponse_QNAME = new QName("http://memory.me.org/", "registerResponse");
    private final static QName _DeleteResponse_QNAME = new QName("http://memory.me.org/", "deleteResponse");
    private final static QName _SendInvite_QNAME = new QName("http://memory.me.org/", "sendInvite");
    private final static QName _GetUserIDResponse_QNAME = new QName("http://memory.me.org/", "getUserIDResponse");
    private final static QName _Delete_QNAME = new QName("http://memory.me.org/", "delete");
    private final static QName _Login_QNAME = new QName("http://memory.me.org/", "login");
    private final static QName _GetUser_QNAME = new QName("http://memory.me.org/", "getUser");
    private final static QName _ViewMemoriesResponse_QNAME = new QName("http://memory.me.org/", "viewMemoriesResponse");
    private final static QName _Test_QNAME = new QName("http://memory.me.org/", "test");
    private final static QName _ViewInvites_QNAME = new QName("http://memory.me.org/", "viewInvites");
    private final static QName _LoginResponse_QNAME = new QName("http://memory.me.org/", "loginResponse");
    private final static QName _GetUserResponse_QNAME = new QName("http://memory.me.org/", "getUserResponse");
    private final static QName _ViewInviteSenderResponse_QNAME = new QName("http://memory.me.org/", "viewInviteSenderResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: org.me.memory
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GetUserResponse }
     * 
     */
    public GetUserResponse createGetUserResponse() {
        return new GetUserResponse();
    }

    /**
     * Create an instance of {@link ViewInviteSenderResponse }
     * 
     */
    public ViewInviteSenderResponse createViewInviteSenderResponse() {
        return new ViewInviteSenderResponse();
    }

    /**
     * Create an instance of {@link LoginResponse }
     * 
     */
    public LoginResponse createLoginResponse() {
        return new LoginResponse();
    }

    /**
     * Create an instance of {@link Test }
     * 
     */
    public Test createTest() {
        return new Test();
    }

    /**
     * Create an instance of {@link ViewInvites }
     * 
     */
    public ViewInvites createViewInvites() {
        return new ViewInvites();
    }

    /**
     * Create an instance of {@link ViewMemoriesResponse }
     * 
     */
    public ViewMemoriesResponse createViewMemoriesResponse() {
        return new ViewMemoriesResponse();
    }

    /**
     * Create an instance of {@link GetUser }
     * 
     */
    public GetUser createGetUser() {
        return new GetUser();
    }

    /**
     * Create an instance of {@link Login }
     * 
     */
    public Login createLogin() {
        return new Login();
    }

    /**
     * Create an instance of {@link Delete }
     * 
     */
    public Delete createDelete() {
        return new Delete();
    }

    /**
     * Create an instance of {@link GetUserIDResponse }
     * 
     */
    public GetUserIDResponse createGetUserIDResponse() {
        return new GetUserIDResponse();
    }

    /**
     * Create an instance of {@link SendInvite }
     * 
     */
    public SendInvite createSendInvite() {
        return new SendInvite();
    }

    /**
     * Create an instance of {@link DeleteResponse }
     * 
     */
    public DeleteResponse createDeleteResponse() {
        return new DeleteResponse();
    }

    /**
     * Create an instance of {@link AddResource }
     * 
     */
    public AddResource createAddResource() {
        return new AddResource();
    }

    /**
     * Create an instance of {@link RegisterResponse }
     * 
     */
    public RegisterResponse createRegisterResponse() {
        return new RegisterResponse();
    }

    /**
     * Create an instance of {@link AddMemory }
     * 
     */
    public AddMemory createAddMemory() {
        return new AddMemory();
    }

    /**
     * Create an instance of {@link TestResponse }
     * 
     */
    public TestResponse createTestResponse() {
        return new TestResponse();
    }

    /**
     * Create an instance of {@link ViewInviteSender }
     * 
     */
    public ViewInviteSender createViewInviteSender() {
        return new ViewInviteSender();
    }

    /**
     * Create an instance of {@link ViewInvitesResponse }
     * 
     */
    public ViewInvitesResponse createViewInvitesResponse() {
        return new ViewInvitesResponse();
    }

    /**
     * Create an instance of {@link GetUserID }
     * 
     */
    public GetUserID createGetUserID() {
        return new GetUserID();
    }

    /**
     * Create an instance of {@link ViewMemories }
     * 
     */
    public ViewMemories createViewMemories() {
        return new ViewMemories();
    }

    /**
     * Create an instance of {@link Register }
     * 
     */
    public Register createRegister() {
        return new Register();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Register }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "register")
    public JAXBElement<Register> createRegister(Register value) {
        return new JAXBElement<Register>(_Register_QNAME, Register.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetUserID }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "getUserID")
    public JAXBElement<GetUserID> createGetUserID(GetUserID value) {
        return new JAXBElement<GetUserID>(_GetUserID_QNAME, GetUserID.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ViewMemories }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "viewMemories")
    public JAXBElement<ViewMemories> createViewMemories(ViewMemories value) {
        return new JAXBElement<ViewMemories>(_ViewMemories_QNAME, ViewMemories.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ViewInviteSender }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "viewInviteSender")
    public JAXBElement<ViewInviteSender> createViewInviteSender(ViewInviteSender value) {
        return new JAXBElement<ViewInviteSender>(_ViewInviteSender_QNAME, ViewInviteSender.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ViewInvitesResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "viewInvitesResponse")
    public JAXBElement<ViewInvitesResponse> createViewInvitesResponse(ViewInvitesResponse value) {
        return new JAXBElement<ViewInvitesResponse>(_ViewInvitesResponse_QNAME, ViewInvitesResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AddMemory }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "addMemory")
    public JAXBElement<AddMemory> createAddMemory(AddMemory value) {
        return new JAXBElement<AddMemory>(_AddMemory_QNAME, AddMemory.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link TestResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "testResponse")
    public JAXBElement<TestResponse> createTestResponse(TestResponse value) {
        return new JAXBElement<TestResponse>(_TestResponse_QNAME, TestResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AddResource }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "addResource")
    public JAXBElement<AddResource> createAddResource(AddResource value) {
        return new JAXBElement<AddResource>(_AddResource_QNAME, AddResource.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link RegisterResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "registerResponse")
    public JAXBElement<RegisterResponse> createRegisterResponse(RegisterResponse value) {
        return new JAXBElement<RegisterResponse>(_RegisterResponse_QNAME, RegisterResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DeleteResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "deleteResponse")
    public JAXBElement<DeleteResponse> createDeleteResponse(DeleteResponse value) {
        return new JAXBElement<DeleteResponse>(_DeleteResponse_QNAME, DeleteResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SendInvite }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "sendInvite")
    public JAXBElement<SendInvite> createSendInvite(SendInvite value) {
        return new JAXBElement<SendInvite>(_SendInvite_QNAME, SendInvite.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetUserIDResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "getUserIDResponse")
    public JAXBElement<GetUserIDResponse> createGetUserIDResponse(GetUserIDResponse value) {
        return new JAXBElement<GetUserIDResponse>(_GetUserIDResponse_QNAME, GetUserIDResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Delete }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "delete")
    public JAXBElement<Delete> createDelete(Delete value) {
        return new JAXBElement<Delete>(_Delete_QNAME, Delete.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Login }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "login")
    public JAXBElement<Login> createLogin(Login value) {
        return new JAXBElement<Login>(_Login_QNAME, Login.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetUser }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "getUser")
    public JAXBElement<GetUser> createGetUser(GetUser value) {
        return new JAXBElement<GetUser>(_GetUser_QNAME, GetUser.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ViewMemoriesResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "viewMemoriesResponse")
    public JAXBElement<ViewMemoriesResponse> createViewMemoriesResponse(ViewMemoriesResponse value) {
        return new JAXBElement<ViewMemoriesResponse>(_ViewMemoriesResponse_QNAME, ViewMemoriesResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Test }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "test")
    public JAXBElement<Test> createTest(Test value) {
        return new JAXBElement<Test>(_Test_QNAME, Test.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ViewInvites }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "viewInvites")
    public JAXBElement<ViewInvites> createViewInvites(ViewInvites value) {
        return new JAXBElement<ViewInvites>(_ViewInvites_QNAME, ViewInvites.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "loginResponse")
    public JAXBElement<LoginResponse> createLoginResponse(LoginResponse value) {
        return new JAXBElement<LoginResponse>(_LoginResponse_QNAME, LoginResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetUserResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "getUserResponse")
    public JAXBElement<GetUserResponse> createGetUserResponse(GetUserResponse value) {
        return new JAXBElement<GetUserResponse>(_GetUserResponse_QNAME, GetUserResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ViewInviteSenderResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://memory.me.org/", name = "viewInviteSenderResponse")
    public JAXBElement<ViewInviteSenderResponse> createViewInviteSenderResponse(ViewInviteSenderResponse value) {
        return new JAXBElement<ViewInviteSenderResponse>(_ViewInviteSenderResponse_QNAME, ViewInviteSenderResponse.class, null, value);
    }

}
