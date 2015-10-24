.class public Lcom/dianxinos/powermanager/update/DownloadActivity;
.super Landroid/app/Activity;
.source "DownloadActivity.java"

# interfaces
.implements Liz;


# instance fields
.field private a:Laxh;

.field private b:Lka;

.field private c:Landroid/widget/ProgressBar;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->e:Z

    .line 168
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/update/DownloadActivity;)Lka;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->b:Lka;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 102
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070062

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 104
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0xa

    .line 106
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 161
    iput p1, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->d:I

    .line 162
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 163
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 164
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 165
    iget-object v1, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->a:Laxh;

    invoke-virtual {v1, v0}, Laxh;->sendMessage(Landroid/os/Message;)Z

    .line 166
    return-void
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/update/DownloadActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->c:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;JJ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 133
    iget v0, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->d:I

    .line 134
    cmp-long v1, p4, v2

    if-lez v1, :cond_0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 135
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p2

    div-long/2addr v0, p4

    long-to-int v0, v0

    .line 137
    :cond_0
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->a(I)V

    .line 138
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    const-wide/16 v1, 0x0

    cmp-long v1, p5, v1

    if-lez v1, :cond_0

    .line 121
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p3

    div-long/2addr v0, p5

    long-to-int v0, v0

    .line 123
    :cond_0
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->a(I)V

    .line 124
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    const/4 v0, 0x2

    if-eq p6, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->a:Laxh;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laxh;->sendEmptyMessage(I)Z

    .line 153
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->e:Z

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->e:Z

    .line 155
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->b:Lka;

    invoke-virtual {v0, p0}, Lka;->b(Liz;)V

    .line 158
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    const-string v1, "percent"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->d:I

    .line 52
    new-instance v0, Laxh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Laxh;-><init>(Lcom/dianxinos/powermanager/update/DownloadActivity;Laxf;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->a:Laxh;

    .line 53
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->b:Lka;

    .line 55
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a004a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a011c

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/dianxinos/powermanager/update/DownloadActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 58
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a011b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 61
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070091

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070092

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->c:Landroid/widget/ProgressBar;

    .line 65
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 66
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->c:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 67
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 69
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 70
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a011e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 72
    new-instance v1, Laxf;

    invoke-direct {v1, p0}, Laxf;-><init>(Lcom/dianxinos/powermanager/update/DownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 86
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a011d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 88
    new-instance v1, Laxg;

    invoke-direct {v1, p0}, Laxg;-><init>(Lcom/dianxinos/powermanager/update/DownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->b:Lka;

    invoke-virtual {v0, p0}, Lka;->a(Liz;)V

    .line 96
    iput-boolean v4, p0, Lcom/dianxinos/powermanager/update/DownloadActivity;->e:Z

    .line 98
    invoke-direct {p0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->a()V

    .line 99
    return-void
.end method
