.class public Lalp;
.super Ljava/lang/Object;
.source "AutoCleanupSettings.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lalp;->a:Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    if-eqz p3, :cond_0

    .line 96
    iget-object v0, p0, Lalp;->a:Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;

    add-int/lit8 v1, p2, 0x1

    mul-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->a(Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;I)I

    .line 97
    iget-object v0, p0, Lalp;->a:Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a016d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lalp;->a:Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;

    invoke-static {v4}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->a(Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lalp;->a:Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;

    invoke-static {v1}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->b(Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lalp;->a:Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a016d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lalp;->a:Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;

    invoke-static {v4}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->a(Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lalp;->a:Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;

    invoke-static {v1}, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;->b(Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method
