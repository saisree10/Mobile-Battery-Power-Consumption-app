.class abstract Lcom/facebook/AuthorizationClient$AuthHandler;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field methodLoggingExtras:Ljava/util/Map;

.field final synthetic this$0:Lcom/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$AuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 562
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthHandler;->methodLoggingExtras:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 563
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/AuthorizationClient$AuthHandler;->methodLoggingExtras:Ljava/util/Map;

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$AuthHandler;->methodLoggingExtras:Ljava/util/Map;

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    return-void

    .line 565
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method cancel()V
    .locals 0

    .prologue
    .line 559
    return-void
.end method

.method abstract getNameForLogging()Ljava/lang/String;
.end method

.method needsInternetPermission()Z
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method needsRestart()Z
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method abstract tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
.end method
