.class public Ladi;
.super Lauu;
.source "BatteryFaceBookDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:Landroid/app/Activity;

.field private d:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

.field private e:Lavc;

.field private f:Lcom/facebook/Session;

.field private g:Landroid/graphics/Bitmap;

.field private h:Ljava/lang/String;

.field private i:Lcom/facebook/Session$StatusCallback;

.field private j:Lcom/facebook/Session$StatusCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1}, Lauu;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v2, p0, Ladi;->f:Lcom/facebook/Session;

    .line 30
    iput-object v2, p0, Ladi;->g:Landroid/graphics/Bitmap;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Ladi;->h:Ljava/lang/String;

    .line 33
    new-instance v0, Ladj;

    invoke-direct {v0, p0}, Ladj;-><init>(Ladi;)V

    iput-object v0, p0, Ladi;->i:Lcom/facebook/Session$StatusCallback;

    .line 43
    new-instance v0, Ladk;

    invoke-direct {v0, p0}, Ladk;-><init>(Ladi;)V

    iput-object v0, p0, Ladi;->j:Lcom/facebook/Session$StatusCallback;

    .line 63
    iput-object p1, p0, Ladi;->c:Landroid/app/Activity;

    .line 64
    iput-object p2, p0, Ladi;->g:Landroid/graphics/Bitmap;

    .line 65
    if-eqz p3, :cond_3

    iget-object v0, p0, Ladi;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0389

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ladi;->h:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Ladi;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030009

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 69
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07002b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070027

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    iput-object v0, p0, Ladi;->d:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    .line 72
    iget-object v0, p0, Ladi;->d:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a()V

    .line 73
    iget-object v0, p0, Ladi;->d:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->setPercentTextVisble(Z)V

    .line 74
    invoke-virtual {p0, v1}, Ladi;->b(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0}, Ladi;->h()V

    .line 76
    invoke-virtual {p0}, Ladi;->i()V

    .line 77
    if-eqz p3, :cond_0

    .line 78
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070029

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a02be

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 80
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07002a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    :cond_0
    sget-object v0, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/Settings;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    .line 84
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 85
    if-nez v0, :cond_2

    .line 86
    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lcom/facebook/Session;

    iget-object v1, p0, Ladi;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 89
    :cond_1
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 90
    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    sget-object v2, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v1, v2}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    iget-object v2, p0, Ladi;->c:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Ladi;->i:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 94
    :cond_2
    return-void

    .line 65
    :cond_3
    iget-object v0, p0, Ladi;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a038a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic a(Ladi;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Ladi;->g:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Ladi;Lcom/facebook/Session;)Lcom/facebook/Session;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Ladi;->f:Lcom/facebook/Session;

    return-object p1
.end method

.method static synthetic a(Ladi;Lcom/facebook/Session;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Ladi;->a(Lcom/facebook/Session;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/facebook/Session;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-direct {p0}, Ladi;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    new-instance v0, Ladl;

    invoke-direct {v0, p0, p1}, Ladl;-><init>(Ladi;Lcom/facebook/Session;)V

    invoke-static {p1, p2, v0}, Lcom/facebook/Request;->newUploadPhotoRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object v1

    .line 136
    const-string v2, "name"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 138
    invoke-virtual {p0}, Ladi;->a()V

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Ladi;->f:Lcom/facebook/Session;

    new-instance v1, Lcom/facebook/Session$NewPermissionsRequest;

    iget-object v2, p0, Ladi;->c:Landroid/app/Activity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "publish_actions"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_0
.end method

.method static synthetic b(Ladi;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Ladi;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Ladi;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Ladi;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private l()Z
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    iput-object v0, p0, Ladi;->f:Lcom/facebook/Session;

    .line 147
    iget-object v0, p0, Ladi;->f:Lcom/facebook/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ladi;->f:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "publish_actions"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Ladi;->e:Lavc;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lavc;

    iget-object v1, p0, Ladi;->c:Landroid/app/Activity;

    sget-object v2, Lly;->j:Lcom/dianxinos/dxbs/R$style;

    const v2, 0x7f0b001a

    invoke-direct {v0, v1, v2}, Lavc;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Ladi;->e:Lavc;

    .line 154
    :cond_0
    iget-object v0, p0, Ladi;->e:Lavc;

    invoke-virtual {v0}, Lavc;->show()V

    .line 155
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Ladi;->e:Lavc;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Ladi;->e:Lavc;

    invoke-virtual {v0}, Lavc;->dismiss()V

    .line 161
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 165
    invoke-virtual {p0}, Ladi;->b()V

    .line 166
    invoke-super {p0}, Lauu;->dismiss()V

    .line 167
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f07002b

    if-ne v0, v1, :cond_2

    .line 99
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    iget-object v2, p0, Ladi;->c:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Ladi;->j:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Ladi;->c:Landroid/app/Activity;

    const/4 v1, 0x1

    iget-object v2, p0, Ladi;->j:Lcom/facebook/Session$StatusCallback;

    invoke-static {v0, v1, v2}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070026

    if-ne v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Ladi;->dismiss()V

    goto :goto_0
.end method
