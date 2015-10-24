.class public Larw;
.super Ljava/lang/Object;
.source "SmartModeBatterySettings.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 196
    if-eqz p3, :cond_0

    .line 197
    iget-object v0, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->e(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    add-int/lit8 v1, p2, 0x1

    mul-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->a(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;I)I

    .line 203
    :goto_0
    iget-object v0, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->b(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v2}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->a(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->c(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    move-result-object v0

    iget-object v1, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0147

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v5}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->a(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setTitle(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->d(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    move-result-object v0

    iget-object v1, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0148

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v5}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->a(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setTitle(Ljava/lang/String;)V

    .line 208
    :cond_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    add-int/lit8 v1, p2, 0xa

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->a(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;I)I

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 184
    iget-object v0, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->b(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v2}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->a(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->c(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    move-result-object v0

    iget-object v1, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0147

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v5}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->a(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setTitle(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->d(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    move-result-object v0

    iget-object v1, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0148

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Larw;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v5}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->a(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setTitle(Ljava/lang/String;)V

    .line 187
    return-void
.end method
