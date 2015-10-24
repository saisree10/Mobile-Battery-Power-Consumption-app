.class public Lcom/dianxinos/powermanager/mode/SettingListDialog;
.super Laao;
.source "SettingListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/widget/LinearLayout;

.field private c:I

.field private d:I

.field private e:Ljava/util/ArrayList;

.field private f:Lamp;

.field private g:Lamh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Laao;-><init>()V

    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->a:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 95
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070156

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701cf

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 99
    iget v1, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->d:I

    if-ne p1, v1, :cond_0

    .line 100
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-object v2

    .line 102
    :cond_0
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 80
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070097

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/SettingListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->b:Landroid/widget/LinearLayout;

    .line 82
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->c:I

    if-ge v0, v1, :cond_1

    .line 84
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/mode/SettingListDialog;->a(I)Landroid/view/View;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    iget v1, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->c:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->b:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lauu;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0701cf

    const/4 v3, 0x0

    .line 113
    move v2, v3

    :goto_0
    iget v0, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->c:I

    if-ge v2, v0, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->b:Landroid/widget/LinearLayout;

    mul-int/lit8 v1, v2, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 119
    iget v1, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->d:I

    if-eq v2, v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->b:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->d:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget-object v4, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 123
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iput v2, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->d:I

    .line 127
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/dianxinos/powermanager/mode/NewModeActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 129
    const-string v3, "SelectedValue"

    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->e:Ljava/util/ArrayList;

    iget v4, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->d:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "SelectedItem"

    iget v3, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->d:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 132
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/mode/SettingListDialog;->setResult(ILandroid/content/Intent;)V

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/SettingListDialog;->finish()V

    .line 138
    return-void

    .line 113
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const v3, 0x7f030073

    .line 38
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {p0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->f:Lamp;

    .line 40
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->f:Lamp;

    invoke-virtual {v0}, Lamp;->g()Lamh;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->g:Lamh;

    .line 42
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/SettingListDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 44
    const-string v0, "counts"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->c:I

    .line 45
    const-string v0, "Selected"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->d:I

    .line 47
    const-string v0, ""

    .line 48
    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a00ba

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/SettingListDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/mode/SettingListDialog;->setContentView(I)V

    .line 52
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->g:Lamh;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->d()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->e:Ljava/util/ArrayList;

    move-object v1, v0

    .line 65
    :goto_0
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070153

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/SettingListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->a:Landroid/view/LayoutInflater;

    .line 69
    invoke-direct {p0}, Lcom/dianxinos/powermanager/mode/SettingListDialog;->a()V

    .line 71
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070150

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/SettingListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lanj;

    invoke-direct {v1, p0}, Lanj;-><init>(Lcom/dianxinos/powermanager/mode/SettingListDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void

    .line 54
    :cond_0
    if-ne v1, v4, :cond_1

    .line 55
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a00bb

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/SettingListDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/mode/SettingListDialog;->setContentView(I)V

    .line 57
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->g:Lamh;

    invoke-virtual {v1, v4}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->d()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->e:Ljava/util/ArrayList;

    move-object v1, v0

    goto :goto_0

    .line 59
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 60
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a00bc

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/SettingListDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/mode/SettingListDialog;->setContentView(I)V

    .line 62
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->g:Lamh;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->d()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/dianxinos/powermanager/mode/SettingListDialog;->e:Ljava/util/ArrayList;

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Laao;->onPause()V

    .line 142
    return-void
.end method
