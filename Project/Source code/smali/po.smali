.class public Lpo;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# instance fields
.field a:Landroid/graphics/drawable/AnimationDrawable;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 21
    new-instance v0, Lpp;

    invoke-direct {v0, p0}, Lpp;-><init>(Lpo;)V

    iput-object v0, p0, Lpo;->f:Ljava/lang/Runnable;

    .line 31
    iput-object p1, p0, Lpo;->e:Landroid/content/Context;

    .line 32
    sget v0, Loj;->toolbox_loadingdialog:I

    invoke-virtual {p0, v0}, Lpo;->setContentView(I)V

    .line 34
    sget v0, Loi;->toolbox_loading_des:I

    invoke-virtual {p0, v0}, Lpo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpo;->b:Landroid/widget/TextView;

    .line 35
    sget v0, Loi;->toolbox_loading_dots:I

    invoke-virtual {p0, v0}, Lpo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lpo;->d:Landroid/widget/ImageView;

    .line 36
    iget-object v0, p0, Lpo;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lpo;->a:Landroid/graphics/drawable/AnimationDrawable;

    .line 37
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lpo;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lpo;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 41
    iget-object v0, p0, Lpo;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lpo;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lpo;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lpo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpo;->c:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lpo;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lpo;->b()V

    .line 56
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 47
    invoke-direct {p0}, Lpo;->a()V

    .line 48
    invoke-direct {p0}, Lpo;->b()V

    .line 49
    return-void
.end method
