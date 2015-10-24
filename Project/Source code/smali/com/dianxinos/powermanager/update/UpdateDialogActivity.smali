.class public Lcom/dianxinos/powermanager/update/UpdateDialogActivity;
.super Landroid/app/Activity;
.source "UpdateDialogActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:I

.field private h:Landroid/widget/CheckBox;

.field private i:Laxl;

.field private j:Laxt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 119
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070062

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 121
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0xa

    .line 123
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {p0}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v0

    invoke-virtual {v0}, Lka;->g()V

    .line 143
    new-instance v0, Laxl;

    invoke-direct {v0, p0}, Laxl;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laxl;->c(Z)V

    .line 145
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 146
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 132
    iget v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->g:I

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v0

    invoke-virtual {v0}, Lka;->g()V

    .line 135
    :cond_0
    iget v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.dxbs.CLOSE_APP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 71
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->a:Ljava/lang/String;

    .line 72
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->b:Ljava/lang/String;

    .line 73
    const-string v1, "button1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->c:Ljava/lang/String;

    .line 74
    const-string v1, "button2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->d:Ljava/lang/String;

    .line 75
    const-string v1, "priority"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->g:I

    .line 77
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 78
    :cond_0
    const-string v0, "UpdateDialog"

    const-string v1, "Incorrect usage of CommonDialogActivity!"

    invoke-static {v0, v1}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->finish()V

    .line 116
    :goto_0
    return-void

    .line 83
    :cond_1
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070091

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    iget-object v1, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070093

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->h:Landroid/widget/CheckBox;

    .line 90
    new-instance v0, Laxt;

    iget v1, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->g:I

    invoke-direct {v0, p0, v1}, Laxt;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->j:Laxt;

    .line 91
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->e:Landroid/widget/Button;

    .line 92
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 94
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->j:Laxt;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 97
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->f:Landroid/widget/Button;

    .line 98
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->j:Laxt;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_2
    iget v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->g:I

    if-nez v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->h:Landroid/widget/CheckBox;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a020a

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 109
    :cond_3
    invoke-static {p0}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v0

    const-string v1, "dl-stu"

    invoke-virtual {v0, v1}, Lka;->a(Ljava/lang/String;)V

    .line 112
    new-instance v0, Laxl;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Laxl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->i:Laxl;

    .line 113
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->i:Laxl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Laxl;->a(J)V

    .line 115
    invoke-direct {p0}, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;->a()V

    goto/16 :goto_0
.end method
