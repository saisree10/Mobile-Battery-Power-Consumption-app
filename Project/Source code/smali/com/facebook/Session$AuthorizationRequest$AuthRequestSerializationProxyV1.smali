.class Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x79685fde6eced24fL


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final defaultAudience:Ljava/lang/String;

.field private isLegacy:Z

.field private final loginBehavior:Lcom/facebook/SessionLoginBehavior;

.field private final permissions:Ljava/util/List;

.field private final requestCode:I

.field private final validateSameFbidAsToken:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1846
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    .line 1847
    iput p2, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->requestCode:I

    .line 1848
    iput-object p3, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->permissions:Ljava/util/List;

    .line 1849
    iput-object p4, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->defaultAudience:Ljava/lang/String;

    .line 1850
    iput-boolean p5, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->isLegacy:Z

    .line 1851
    iput-object p6, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->applicationId:Ljava/lang/String;

    .line 1852
    iput-object p7, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->validateSameFbidAsToken:Ljava/lang/String;

    .line 1853
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/facebook/Session$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1833
    invoke-direct/range {p0 .. p7}, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;-><init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 1856
    new-instance v0, Lcom/facebook/Session$AuthorizationRequest;

    iget-object v1, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    iget v2, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->requestCode:I

    iget-object v3, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->permissions:Ljava/util/List;

    iget-object v4, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->defaultAudience:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->isLegacy:Z

    iget-object v6, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->applicationId:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->validateSameFbidAsToken:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/facebook/Session$1;)V

    return-object v0
.end method
