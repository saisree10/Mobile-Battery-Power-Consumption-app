.class Lcom/facebook/widget/WebDialog$DialogWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.java"


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/WebDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/WebDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/WebDialog;Lcom/facebook/widget/WebDialog$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/facebook/widget/WebDialog$DialogWebViewClient;-><init>(Lcom/facebook/widget/WebDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 413
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #getter for: Lcom/facebook/widget/WebDialog;->isDetached:Z
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$400(Lcom/facebook/widget/WebDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #getter for: Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$500(Lcom/facebook/widget/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #getter for: Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$600(Lcom/facebook/widget/WebDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 422
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #getter for: Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$700(Lcom/facebook/widget/WebDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #getter for: Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$800(Lcom/facebook/widget/WebDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 404
    const-string v0, "FacebookSDK.WebDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 406
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #getter for: Lcom/facebook/widget/WebDialog;->isDetached:Z
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$400(Lcom/facebook/widget/WebDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #getter for: Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$500(Lcom/facebook/widget/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 409
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    new-instance v1, Lcom/facebook/FacebookDialogException;

    invoke-direct {v1, p3, p2, p4}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #calls: Lcom/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V
    invoke-static {v0, v1}, Lcom/facebook/widget/WebDialog;->access$300(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V

    .line 386
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V

    .line 387
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 394
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 396
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    new-instance v1, Lcom/facebook/FacebookDialogException;

    const/16 v2, -0xb

    invoke-direct {v1, v3, v2, v3}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #calls: Lcom/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V
    invoke-static {v0, v1}, Lcom/facebook/widget/WebDialog;->access$300(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V

    .line 397
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 398
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V

    .line 400
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 332
    const-string v0, "FacebookSDK.WebDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v0, "fbconnect://success"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 334
    invoke-static {p2}, Lcom/facebook/android/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 336
    const-string v0, "error"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    if-nez v0, :cond_0

    .line 338
    const-string v0, "error_type"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    :cond_0
    const-string v1, "error_msg"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    if-nez v1, :cond_1

    .line 343
    const-string v1, "error_description"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    :cond_1
    const-string v2, "error_code"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 349
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 355
    :goto_0
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-ne v2, v3, :cond_2

    .line 357
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #calls: Lcom/facebook/widget/WebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V
    invoke-static {v0, v5}, Lcom/facebook/widget/WebDialog;->access$200(Lcom/facebook/widget/WebDialog;Landroid/os/Bundle;)V

    .line 366
    :goto_1
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V

    move v0, v4

    .line 378
    :goto_2
    return v0

    .line 350
    :catch_0
    move-exception v2

    move v2, v3

    .line 351
    goto :goto_0

    .line 358
    :cond_2
    if-eqz v0, :cond_4

    const-string v3, "access_denied"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "OAuthAccessDeniedException"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #calls: Lcom/facebook/widget/WebDialog;->sendCancelToListener()V
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$000(Lcom/facebook/widget/WebDialog;)V

    goto :goto_1

    .line 362
    :cond_4
    new-instance v3, Lcom/facebook/FacebookRequestError;

    invoke-direct {v3, v2, v0, v1}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    new-instance v2, Lcom/facebook/FacebookServiceException;

    invoke-direct {v2, v3, v1}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    #calls: Lcom/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V
    invoke-static {v0, v2}, Lcom/facebook/widget/WebDialog;->access$300(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 368
    :cond_5
    const-string v0, "fbconnect://cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 369
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #calls: Lcom/facebook/widget/WebDialog;->sendCancelToListener()V
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$000(Lcom/facebook/widget/WebDialog;)V

    .line 370
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V

    move v0, v4

    .line 371
    goto :goto_2

    .line 372
    :cond_6
    const-string v0, "touch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 373
    const/4 v0, 0x0

    goto :goto_2

    .line 376
    :cond_7
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 378
    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_0
.end method
