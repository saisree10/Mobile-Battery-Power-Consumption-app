.class public Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;
.super Laao;
.source "AutoCleanupSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lamb;

.field private b:Landroid/widget/SeekBar;

.field private c:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Z

.field private g:I

.field private h:Lcom/dianxinos/powermanager/ui/MainTitle;

.field private i:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Laao;-><init>()V

    .line 81
    new-instance v0, Lalp;

    invoke-direct {v0, p0}, Lalp;-><init>(Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->i:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->g:I

    return v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->g:I

    return p1
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->c:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0, p1}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setStatus(Z)V

    .line 129
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->c:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0, p1}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setStatus(Z)V

    .line 132
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->e:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->a:Lamb;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->f:Z

    invoke-virtual {v0, v1}, Lamb;->g(Z)V

    .line 122
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->a:Lamb;

    iget v1, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->g:I

    invoke-virtual {v0, v1}, Lamb;->b(I)V

    .line 123
    invoke-super {p0}, Laao;->onBackPressed()V

    .line 124
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->c:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    if-ne p1, v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->c:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->getStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->f:Z

    .line 108
    invoke-direct {p0, v2}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->a(Z)V

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->a:Lamb;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->f:Z

    invoke-virtual {v0, v1}, Lamb;->g(Z)V

    .line 117
    :cond_0
    :goto_1
    return-void

    .line 110
    :cond_1
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->f:Z

    .line 111
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->a(Z)V

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->d:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 115
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0156

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->setContentView(I)V

    .line 42
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->h:Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 43
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070134

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v2, 0x7f0801b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->h:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070135

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->c:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    .line 46
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->c:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0, v3}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->c:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-static {p0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->a:Lamb;

    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->a:Lamb;

    invoke-virtual {v0}, Lamb;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->f:Z

    .line 51
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->e:Landroid/widget/TextView;

    .line 53
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->b:Landroid/widget/SeekBar;

    .line 55
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->b:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0203d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->b:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0203d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->a:Lamb;

    invoke-virtual {v0}, Lamb;->i()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->g:I

    .line 58
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a016d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->b:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->g:I

    div-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 61
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->b:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->i:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 63
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->d:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Laao;->onResume()V

    .line 70
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->h:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 71
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->h:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Lalo;

    invoke-direct {v1, p0}, Lalo;-><init>(Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->f:Z

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->a(Z)V

    .line 79
    return-void
.end method
