.class Lqx;
.super Landroid/webkit/WebViewClient;
.source "ToolboxTctbClickHandler.java"

# interfaces
.implements Lqv;


# instance fields
.field a:Lou;

.field b:Landroid/webkit/WebView;

.field final synthetic c:Lqs;

.field private d:Ljava/lang/Runnable;

.field private e:Ljava/lang/Runnable;

.field private volatile f:Z

.field private volatile g:Z

.field private volatile h:Z


# direct methods
.method public constructor <init>(Lqs;Lou;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 152
    iput-object p1, p0, Lqx;->c:Lqs;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 101
    new-instance v0, Lqy;

    invoke-direct {v0, p0}, Lqy;-><init>(Lqx;)V

    iput-object v0, p0, Lqx;->d:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lqz;

    invoke-direct {v0, p0}, Lqz;-><init>(Lqx;)V

    iput-object v0, p0, Lqx;->e:Ljava/lang/Runnable;

    .line 146
    iput-boolean v1, p0, Lqx;->f:Z

    .line 147
    iput-boolean v1, p0, Lqx;->g:Z

    .line 148
    iput-boolean v1, p0, Lqx;->h:Z

    .line 153
    iput-object p2, p0, Lqx;->a:Lou;

    .line 154
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 224
    const-string v0, "ToolboxTctbClickHandler"

    const-string v1, "[WebView] handleError"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lqx;->c:Lqs;

    iget-object v0, v0, Lqs;->a:Landroid/os/Handler;

    iget-object v1, p0, Lqx;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 226
    iget-object v0, p0, Lqx;->c:Lqs;

    iget-object v0, v0, Lqs;->a:Landroid/os/Handler;

    iget-object v1, p0, Lqx;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    iget-boolean v0, p0, Lqx;->g:Z

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "ToolboxTctbClickHandler"

    const-string v1, "[WebView]Action canceled."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lqx;->c:Lqs;

    invoke-static {v0}, Lqs;->a(Lqs;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lqx;->a:Lou;

    invoke-static {v0, v1}, Lop;->g(Landroid/content/Context;Lou;)V

    .line 239
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-boolean v0, p0, Lqx;->h:Z

    if-eqz v0, :cond_1

    .line 233
    const-string v0, "ToolboxTctbClickHandler"

    const-string v1, "[WebView] already consumed"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_1
    const-string v0, "ToolboxTctbClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WebView] onReceivedError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lqx;->c:Lqs;

    iget-object v1, p0, Lqx;->a:Lou;

    iget-object v2, p0, Lqx;->a:Lou;

    iget-object v2, v2, Lou;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lqs;->b(Lou;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lqx;->c:Lqs;

    invoke-virtual {v0}, Lqs;->e()V

    goto :goto_0
.end method

.method static synthetic a(Lqx;)Z
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-boolean v0, p0, Lqx;->f:Z

    return v0
.end method

.method static synthetic a(Lqx;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-boolean p1, p0, Lqx;->f:Z

    return p1
.end method

.method static synthetic b(Lqx;)Z
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-boolean v0, p0, Lqx;->g:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqx;->g:Z

    .line 159
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 243
    const-string v0, "ToolboxTctbClickHandler"

    const-string v1, "[WebView] Page finished"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lqx;->c:Lqs;

    iget-object v0, v0, Lqs;->a:Landroid/os/Handler;

    iget-object v1, p0, Lqx;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    iget-object v0, p0, Lqx;->c:Lqs;

    iget-object v0, v0, Lqs;->a:Landroid/os/Handler;

    iget-object v1, p0, Lqx;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    iget-boolean v0, p0, Lqx;->g:Z

    if-eqz v0, :cond_1

    .line 247
    const-string v0, "ToolboxTctbClickHandler"

    const-string v1, "[WebView]Action canceled."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lqx;->c:Lqs;

    invoke-static {v0}, Lqs;->a(Lqs;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lqx;->a:Lou;

    invoke-static {v0, v1}, Lop;->g(Landroid/content/Context;Lou;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-boolean v0, p0, Lqx;->h:Z

    if-eqz v0, :cond_2

    .line 252
    const-string v0, "ToolboxTctbClickHandler"

    const-string v1, "[WebView] already consumed"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_2
    iget-boolean v0, p0, Lqx;->f:Z

    if-nez v0, :cond_0

    .line 256
    const-string v0, "ToolboxTctbClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WebView] start TIMEOUT_FINISH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lqx;->c:Lqs;

    iget-object v0, v0, Lqs;->a:Landroid/os/Handler;

    iget-object v1, p0, Lqx;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 176
    const-string v0, "ToolboxTctbClickHandler"

    const-string v1, "[WebView] onPageStarted."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iput-object p1, p0, Lqx;->b:Landroid/webkit/WebView;

    .line 178
    iput-boolean v2, p0, Lqx;->f:Z

    .line 179
    iput-boolean v2, p0, Lqx;->h:Z

    .line 180
    iget-object v0, p0, Lqx;->c:Lqs;

    iget-object v0, v0, Lqs;->a:Landroid/os/Handler;

    iget-object v1, p0, Lqx;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    iget-object v0, p0, Lqx;->c:Lqs;

    iget-object v0, v0, Lqs;->a:Landroid/os/Handler;

    iget-object v1, p0, Lqx;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    const-string v0, "ToolboxTctbClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WebView] start TIMEOUT_START: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lqx;->c:Lqs;

    iget-object v0, v0, Lqs;->a:Landroid/os/Handler;

    iget-object v1, p0, Lqx;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lqx;->a(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 171
    const-string v0, "SslError"

    invoke-direct {p0, v0}, Lqx;->a(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 189
    const-string v1, "ToolboxTctbClickHandler"

    const-string v2, "[WebView] shouldOverrideUrlLoading."

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lqx;->c:Lqs;

    iget-object v1, v1, Lqs;->a:Landroid/os/Handler;

    iget-object v2, p0, Lqx;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    iget-object v1, p0, Lqx;->c:Lqs;

    iget-object v1, v1, Lqs;->a:Landroid/os/Handler;

    iget-object v2, p0, Lqx;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    iget-boolean v1, p0, Lqx;->g:Z

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "ToolboxTctbClickHandler"

    const-string v2, "[WebView]Action canceled."

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iput-boolean v0, p0, Lqx;->h:Z

    .line 220
    :goto_0
    return v0

    .line 198
    :cond_0
    if-nez p2, :cond_1

    .line 200
    const-string v1, "ToolboxTctbClickHandler"

    const-string v2, "[WebView] null URL."

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lqx;->c:Lqs;

    iget-object v2, p0, Lqx;->a:Lou;

    iget-object v3, p0, Lqx;->a:Lou;

    iget-object v3, v3, Lou;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lqs;->b(Lou;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lqx;->c:Lqs;

    invoke-virtual {v1}, Lqs;->e()V

    .line 203
    iput-boolean v0, p0, Lqx;->h:Z

    goto :goto_0

    .line 207
    :cond_1
    invoke-static {p2}, Lpj;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    const-string v1, "ToolboxTctbClickHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WebView] Market URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lqx;->c:Lqs;

    iget-object v2, p0, Lqx;->a:Lou;

    invoke-virtual {v1, v2, p2}, Lqs;->c(Lou;Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lqx;->c:Lqs;

    invoke-virtual {v1}, Lqs;->e()V

    .line 211
    iput-boolean v0, p0, Lqx;->h:Z

    goto :goto_0

    .line 214
    :cond_2
    const-string v0, "ToolboxTctbClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WebView] Decode URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-boolean v0, p0, Lqx;->f:Z

    if-nez v0, :cond_3

    .line 217
    const-string v0, "ToolboxTctbClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WebView] start TIMEOUT_START: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lqx;->c:Lqs;

    iget-object v0, v0, Lqs;->a:Landroid/os/Handler;

    iget-object v1, p0, Lqx;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
