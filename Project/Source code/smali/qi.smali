.class Lqi;
.super Landroid/webkit/WebViewClient;
.source "ToolboxClickHandler.java"

# interfaces
.implements Lqg;


# instance fields
.field a:Lou;

.field b:Landroid/webkit/WebView;

.field final synthetic c:Lqb;

.field private d:Ljava/lang/Runnable;

.field private e:Ljava/lang/Runnable;

.field private volatile f:Z

.field private volatile g:Z

.field private volatile h:Z


# direct methods
.method public constructor <init>(Lqb;Lou;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 150
    iput-object p1, p0, Lqi;->c:Lqb;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 97
    new-instance v0, Lqj;

    invoke-direct {v0, p0}, Lqj;-><init>(Lqi;)V

    iput-object v0, p0, Lqi;->d:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lqk;

    invoke-direct {v0, p0}, Lqk;-><init>(Lqi;)V

    iput-object v0, p0, Lqi;->e:Ljava/lang/Runnable;

    .line 144
    iput-boolean v1, p0, Lqi;->f:Z

    .line 145
    iput-boolean v1, p0, Lqi;->g:Z

    .line 146
    iput-boolean v1, p0, Lqi;->h:Z

    .line 151
    iput-object p2, p0, Lqi;->a:Lou;

    .line 152
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 222
    const-string v0, "ToolboxClickHandler"

    const-string v1, "[WebView] handleError"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lqi;->c:Lqb;

    iget-object v0, v0, Lqb;->a:Landroid/os/Handler;

    iget-object v1, p0, Lqi;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    iget-object v0, p0, Lqi;->c:Lqb;

    iget-object v0, v0, Lqb;->a:Landroid/os/Handler;

    iget-object v1, p0, Lqi;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    iget-boolean v0, p0, Lqi;->g:Z

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "ToolboxClickHandler"

    const-string v1, "[WebView]Action canceled."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lqi;->c:Lqb;

    invoke-static {v0}, Lqb;->a(Lqb;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lqi;->a:Lou;

    invoke-static {v0, v1}, Lop;->g(Landroid/content/Context;Lou;)V

    .line 237
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-boolean v0, p0, Lqi;->h:Z

    if-eqz v0, :cond_1

    .line 231
    const-string v0, "ToolboxClickHandler"

    const-string v1, "[WebView] already consumed"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_1
    const-string v0, "ToolboxClickHandler"

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

    .line 235
    iget-object v0, p0, Lqi;->c:Lqb;

    iget-object v1, p0, Lqi;->a:Lou;

    iget-object v2, p0, Lqi;->a:Lou;

    iget-object v2, v2, Lou;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lqb;->b(Lou;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lqi;->c:Lqb;

    invoke-virtual {v0}, Lqb;->c()V

    goto :goto_0
.end method

.method static synthetic a(Lqi;)Z
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-boolean v0, p0, Lqi;->f:Z

    return v0
.end method

.method static synthetic a(Lqi;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-boolean p1, p0, Lqi;->f:Z

    return p1
.end method

.method static synthetic b(Lqi;)Z
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-boolean v0, p0, Lqi;->g:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqi;->g:Z

    .line 157
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 241
    const-string v0, "ToolboxClickHandler"

    const-string v1, "[WebView] Page finished"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lqi;->c:Lqb;

    iget-object v0, v0, Lqb;->a:Landroid/os/Handler;

    iget-object v1, p0, Lqi;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    iget-object v0, p0, Lqi;->c:Lqb;

    iget-object v0, v0, Lqb;->a:Landroid/os/Handler;

    iget-object v1, p0, Lqi;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    iget-boolean v0, p0, Lqi;->g:Z

    if-eqz v0, :cond_1

    .line 245
    const-string v0, "ToolboxClickHandler"

    const-string v1, "[WebView]Action canceled."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lqi;->c:Lqb;

    invoke-static {v0}, Lqb;->a(Lqb;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lqi;->a:Lou;

    invoke-static {v0, v1}, Lop;->g(Landroid/content/Context;Lou;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-boolean v0, p0, Lqi;->h:Z

    if-eqz v0, :cond_2

    .line 250
    const-string v0, "ToolboxClickHandler"

    const-string v1, "[WebView] already consumed"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_2
    iget-boolean v0, p0, Lqi;->f:Z

    if-nez v0, :cond_0

    .line 254
    const-string v0, "ToolboxClickHandler"

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

    .line 255
    iget-object v0, p0, Lqi;->c:Lqb;

    iget-object v0, v0, Lqb;->a:Landroid/os/Handler;

    iget-object v1, p0, Lqi;->d:Ljava/lang/Runnable;

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

    .line 174
    const-string v0, "ToolboxClickHandler"

    const-string v1, "[WebView] onPageStarted."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iput-object p1, p0, Lqi;->b:Landroid/webkit/WebView;

    .line 176
    iput-boolean v2, p0, Lqi;->f:Z

    .line 177
    iput-boolean v2, p0, Lqi;->h:Z

    .line 178
    iget-object v0, p0, Lqi;->c:Lqb;

    iget-object v0, v0, Lqb;->a:Landroid/os/Handler;

    iget-object v1, p0, Lqi;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    iget-object v0, p0, Lqi;->c:Lqb;

    iget-object v0, v0, Lqb;->a:Landroid/os/Handler;

    iget-object v1, p0, Lqi;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    const-string v0, "ToolboxClickHandler"

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

    .line 182
    iget-object v0, p0, Lqi;->c:Lqb;

    iget-object v0, v0, Lqb;->a:Landroid/os/Handler;

    iget-object v1, p0, Lqi;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lqi;->a(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 169
    const-string v0, "SslError"

    invoke-direct {p0, v0}, Lqi;->a(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 187
    const-string v1, "ToolboxClickHandler"

    const-string v2, "[WebView] shouldOverrideUrlLoading."

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lqi;->c:Lqb;

    iget-object v1, v1, Lqb;->a:Landroid/os/Handler;

    iget-object v2, p0, Lqi;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    iget-object v1, p0, Lqi;->c:Lqb;

    iget-object v1, v1, Lqb;->a:Landroid/os/Handler;

    iget-object v2, p0, Lqi;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    iget-boolean v1, p0, Lqi;->g:Z

    if-eqz v1, :cond_0

    .line 191
    const-string v1, "ToolboxClickHandler"

    const-string v2, "[WebView]Action canceled."

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iput-boolean v0, p0, Lqi;->h:Z

    .line 218
    :goto_0
    return v0

    .line 196
    :cond_0
    if-nez p2, :cond_1

    .line 198
    const-string v1, "ToolboxClickHandler"

    const-string v2, "[WebView] null URL."

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lqi;->c:Lqb;

    iget-object v2, p0, Lqi;->a:Lou;

    iget-object v3, p0, Lqi;->a:Lou;

    iget-object v3, v3, Lou;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lqb;->b(Lou;Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lqi;->c:Lqb;

    invoke-virtual {v1}, Lqb;->c()V

    .line 201
    iput-boolean v0, p0, Lqi;->h:Z

    goto :goto_0

    .line 205
    :cond_1
    invoke-static {p2}, Lpj;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    const-string v1, "ToolboxClickHandler"

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

    .line 207
    iget-object v1, p0, Lqi;->c:Lqb;

    iget-object v2, p0, Lqi;->a:Lou;

    invoke-virtual {v1, v2, p2}, Lqb;->c(Lou;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lqi;->c:Lqb;

    invoke-virtual {v1}, Lqb;->c()V

    .line 209
    iput-boolean v0, p0, Lqi;->h:Z

    goto :goto_0

    .line 212
    :cond_2
    const-string v0, "ToolboxClickHandler"

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

    .line 214
    iget-boolean v0, p0, Lqi;->f:Z

    if-nez v0, :cond_3

    .line 215
    const-string v0, "ToolboxClickHandler"

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

    .line 216
    iget-object v0, p0, Lqi;->c:Lqb;

    iget-object v0, v0, Lqb;->a:Landroid/os/Handler;

    iget-object v1, p0, Lqi;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
