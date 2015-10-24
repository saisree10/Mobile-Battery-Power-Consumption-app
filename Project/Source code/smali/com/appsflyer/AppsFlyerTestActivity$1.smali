.class Lcom/appsflyer/AppsFlyerTestActivity$1;
.super Ljava/lang/Object;
.source "AppsFlyerTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appsflyer/AppsFlyerTestActivity;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerTestActivity$1;->a:Lcom/appsflyer/AppsFlyerTestActivity;

    const/4 v1, 0x0

    const-string v2, "textEvent"

    const-string v3, "someValue"

    invoke-static {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
