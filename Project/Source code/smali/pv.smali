.class public Lpv;
.super Landroid/app/ListActivity;
.source "ToolboxBaseListActivity.java"


# instance fields
.field protected a:Landroid/app/Activity;

.field private b:Landroid/content/BroadcastReceiver;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Lpo;

.field private g:Landroid/widget/Toast;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 49
    new-instance v0, Lpw;

    invoke-direct {v0, p0}, Lpw;-><init>(Lpv;)V

    iput-object v0, p0, Lpv;->b:Landroid/content/BroadcastReceiver;

    .line 70
    new-instance v0, Lpx;

    invoke-direct {v0, p0}, Lpx;-><init>(Lpv;)V

    iput-object v0, p0, Lpv;->c:Landroid/content/BroadcastReceiver;

    .line 85
    new-instance v0, Lpy;

    invoke-direct {v0, p0}, Lpy;-><init>(Lpv;)V

    iput-object v0, p0, Lpv;->d:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v0, Lpz;

    invoke-direct {v0, p0}, Lpz;-><init>(Lpv;)V

    iput-object v0, p0, Lpv;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lpv;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lpv;->n()V

    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 388
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 389
    if-nez v0, :cond_0

    .line 393
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lpv;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lpv;->h:Landroid/view/View;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lpv;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 243
    :cond_0
    sget v0, Loi;->nonetworkbar:I

    invoke-virtual {p0, v0}, Lpv;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpv;->h:Landroid/view/View;

    .line 244
    iget-object v0, p0, Lpv;->h:Landroid/view/View;

    iget-object v1, p0, Lpv;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lpv;->h:Landroid/view/View;

    const v1, 0x1020027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lpv;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lpv;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    sget v0, Loi;->toolbox_balancebar:I

    invoke-virtual {p0, v0}, Lpv;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpv;->i:Landroid/view/View;

    .line 257
    iget-object v0, p0, Lpv;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lpv;->i:Landroid/view/View;

    iget-object v1, p0, Lpv;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lpv;->i:Landroid/view/View;

    sget v1, Loi;->toolbox_balance_value:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpv;->j:Landroid/widget/TextView;

    .line 260
    iget-object v0, p0, Lpv;->i:Landroid/view/View;

    sget v1, Loi;->toolbox_balance_refresh:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpv;->k:Landroid/view/View;

    .line 261
    iget-object v0, p0, Lpv;->k:Landroid/view/View;

    iget-object v1, p0, Lpv;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    invoke-virtual {p0}, Lpv;->h()V

    goto :goto_0
.end method

.method private n()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 322
    invoke-static {p0}, Loa;->a(Landroid/content/Context;)I

    move-result v0

    .line 324
    invoke-virtual {p0}, Lpv;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    if-nez v0, :cond_2

    .line 326
    iget-object v1, p0, Lpv;->a:Landroid/app/Activity;

    invoke-static {v1}, Lpf;->f(Landroid/content/Context;)V

    .line 327
    iget-object v1, p0, Lpv;->h:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 333
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lpv;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    if-nez v0, :cond_3

    .line 335
    iget-object v0, p0, Lpv;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 340
    :cond_1
    :goto_1
    return-void

    .line 329
    :cond_2
    iget-object v1, p0, Lpv;->h:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 337
    :cond_3
    iget-object v0, p0, Lpv;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private o()V
    .locals 2

    .prologue
    .line 343
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 344
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lpv;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lpv;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 349
    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lpv;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lpv;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    .line 357
    invoke-static {p0}, Lbc;->a(Landroid/content/Context;)Lbc;

    move-result-object v0

    .line 358
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 359
    const-string v2, "com.dianxinos.toolbox.ACTION_PULL_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string v2, "com.dianxinos.toolbox.ACTION_ICON_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    iget-object v2, p0, Lpv;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Lbc;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 362
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 366
    invoke-static {p0}, Lbc;->a(Landroid/content/Context;)Lbc;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lpv;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lbc;->a(Landroid/content/BroadcastReceiver;)V

    .line 368
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p0}, Lpv;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 374
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 375
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lpv;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lpv;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private t()V
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0}, Lpv;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lpv;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lpv;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method protected a(I)V
    .locals 2
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lpv;->f:Lpo;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Lpo;

    sget v1, Lol;->Dialog_Fullscreen:I

    invoke-direct {v0, p0, v1}, Lpo;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lpv;->f:Lpo;

    .line 283
    iget-object v0, p0, Lpv;->f:Lpo;

    new-instance v1, Lqa;

    invoke-direct {v1, p0}, Lqa;-><init>(Lpv;)V

    invoke-virtual {v0, v1}, Lpo;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lpv;->f:Lpo;

    invoke-virtual {v0, p1}, Lpo;->a(I)V

    .line 292
    iget-object v0, p0, Lpv;->f:Lpo;

    invoke-virtual {v0}, Lpo;->show()V

    .line 293
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    return-void
.end method

.method protected a(Landroid/content/Intent;)Z
    .locals 1
    .parameter

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method protected b(I)V
    .locals 1
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lpv;->g:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 301
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lpv;->g:Landroid/widget/Toast;

    .line 305
    :goto_0
    iget-object v0, p0, Lpv;->g:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 306
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lpv;->g:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lpv;->g:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 310
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lpv;->g:Landroid/widget/Toast;

    .line 314
    :goto_0
    iget-object v0, p0, Lpv;->g:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 315
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lpv;->g:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    return-void
.end method

.method protected c()I
    .locals 3

    .prologue
    .line 160
    invoke-static {p0}, Lpv;->a(Landroid/content/Context;)Z

    move-result v1

    .line 161
    invoke-static {p0}, Lpv;->a(Landroid/content/Context;)Z

    move-result v2

    .line 162
    const/4 v0, 0x0

    .line 163
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 164
    const/4 v0, 0x4

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    if-eqz v1, :cond_2

    .line 166
    const/4 v0, 0x2

    goto :goto_0

    .line 167
    :cond_2
    if-eqz v2, :cond_0

    .line 168
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lpv;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpv;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 210
    invoke-static {p0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/common/coins/CoinManager;->a()I

    move-result v0

    .line 211
    iget-object v1, p0, Lpv;->j:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_0
    return-void
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 216
    sget v0, Loj;->toolbox_list_activity:I

    return v0
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lpv;->f:Lpo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpv;->f:Lpo;

    invoke-virtual {v0}, Lpo;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lpv;->f:Lpo;

    invoke-virtual {v0}, Lpo;->dismiss()V

    .line 278
    :cond_0
    return-void
.end method

.method protected k()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 222
    invoke-virtual {p0}, Lpv;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Lpv;->setContentView(I)V

    .line 224
    iput-object p0, p0, Lpv;->a:Landroid/app/Activity;

    .line 226
    invoke-direct {p0}, Lpv;->l()V

    .line 227
    invoke-direct {p0}, Lpv;->m()V

    .line 229
    invoke-direct {p0}, Lpv;->n()V

    .line 231
    sget v0, Loi;->toolbox_no_apps_refresh_button:I

    invoke-virtual {p0, v0}, Lpv;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 232
    iget-object v1, p0, Lpv;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-direct {p0}, Lpv;->q()V

    .line 235
    invoke-direct {p0}, Lpv;->o()V

    .line 236
    invoke-direct {p0}, Lpv;->s()V

    .line 237
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Lpv;->p()V

    .line 269
    invoke-direct {p0}, Lpv;->r()V

    .line 270
    invoke-direct {p0}, Lpv;->t()V

    .line 271
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 272
    return-void
.end method
