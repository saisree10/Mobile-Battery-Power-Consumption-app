.class public abstract Laan;
.super Ln;
.source "DXPowerFragmentActivity.java"

# interfaces
.implements Lalt;


# instance fields
.field private n:Lalr;

.field private o:Landroid/content/Intent;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ln;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Laan;->p:Z

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v1, Lalu;

    invoke-direct {v1}, Lalu;-><init>()V

    .line 94
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0240

    invoke-virtual {p0, v2}, Laan;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lalu;->a(Ljava/lang/String;)V

    .line 95
    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0201e8

    invoke-virtual {v1, v2}, Lalu;->a(I)V

    .line 96
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lalu;->b(I)V

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, p0, Laan;->n:Lalr;

    invoke-virtual {v1}, Lalr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    :try_start_0
    iget-object v1, p0, Laan;->n:Lalr;

    invoke-virtual {v1, v0}, Lalr;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    const-string v2, "Egads!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    const v2, 0x7f070007

    .line 113
    iget-object v0, p0, Laan;->n:Lalr;

    invoke-virtual {v0}, Lalr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Laan;->n:Lalr;

    invoke-virtual {v0}, Lalr;->b()V

    .line 131
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Laan;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Laan;->getParent()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    :goto_1
    if-eqz v0, :cond_2

    .line 126
    iget-object v1, p0, Laan;->n:Lalr;

    invoke-virtual {v1, v0}, Lalr;->a(Landroid/view/View;)V

    goto :goto_0

    .line 122
    :cond_1
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p0, v2}, Laan;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 128
    :cond_2
    const-string v0, "DXPowerFragmentActivity"

    const-string v1, "Ignore menu action."

    invoke-static {v0, v1}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private h()Landroid/content/Intent;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 134
    new-instance v5, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    const-string v0, "text/plain"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0228

    invoke-virtual {p0, v0}, Laan;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a010d

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const/4 v0, 0x1

    const-string v6, "http://dxurl.cn/dxbs/share_feature_gp"

    aput-object v6, v4, v0

    invoke-virtual {p0, v2, v4}, Laan;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0}, Laan;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 140
    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 142
    if-nez v6, :cond_0

    move-object v0, v1

    .line 162
    :goto_0
    return-object v0

    .line 145
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 147
    sget-object v0, Lazg;->b:[Ljava/lang/String;

    array-length v8, v0

    move v4, v3

    .line 148
    :goto_1
    if-ge v4, v8, :cond_3

    move v2, v3

    .line 149
    :goto_2
    if-ge v2, v7, :cond_2

    .line 151
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 152
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 153
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v10, Lazg;->b:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 156
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 149
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 148
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 162
    goto :goto_0
.end method


# virtual methods
.method public a(Lalu;)V
    .locals 2
    .parameter

    .prologue
    .line 178
    invoke-virtual {p1}, Lalu;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/PowerMgrInfoAcitvity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    invoke-virtual {p0, v0}, Laan;->startActivity(Landroid/content/Intent;)V

    .line 182
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Laan;->n:Lalr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laan;->n:Lalr;

    invoke-virtual {v0}, Lalr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Laan;->n:Lalr;

    invoke-virtual {v0}, Lalr;->b()V

    .line 200
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-super {p0}, Ln;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Ln;->onCreate(Landroid/os/Bundle;)V

    .line 48
    new-instance v0, Lalr;

    invoke-virtual {p0}, Laan;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lalr;-><init>(Landroid/content/Context;Lalt;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Laan;->n:Lalr;

    .line 49
    iget-object v0, p0, Laan;->n:Lalr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lalr;->a(Z)V

    .line 50
    iget-object v0, p0, Laan;->n:Lalr;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lalr;->a(I)V

    .line 51
    iget-object v0, p0, Laan;->n:Lalr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lalr;->b(I)V

    .line 53
    invoke-direct {p0}, Laan;->h()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Laan;->o:Landroid/content/Intent;

    .line 54
    invoke-direct {p0}, Laan;->f()V

    .line 55
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 61
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 62
    iget-boolean v1, p0, Laan;->p:Z

    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Laan;->p:Z

    .line 64
    invoke-direct {p0}, Laan;->g()V

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 68
    iget-object v1, p0, Laan;->n:Lalr;

    if-eqz v1, :cond_2

    iget-object v1, p0, Laan;->n:Lalr;

    invoke-virtual {v1}, Lalr;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    iget-object v1, p0, Laan;->n:Lalr;

    invoke-virtual {v1}, Lalr;->b()V

    goto :goto_0

    .line 73
    :cond_2
    invoke-super {p0, p1, p2}, Ln;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 78
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 79
    iput-boolean v0, p0, Laan;->p:Z

    .line 82
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Ln;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Laan;->n:Lalr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laan;->n:Lalr;

    invoke-virtual {v0}, Lalr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Laan;->n:Lalr;

    invoke-virtual {v0}, Lalr;->b()V

    .line 190
    :cond_0
    invoke-super {p0}, Ln;->onPause()V

    .line 191
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Ln;->onResume()V

    .line 171
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 206
    const-string v0, "WORKAROUND_FOR_BUG_19917_KEY"

    const-string v1, "WORKAROUND_FOR_BUG_19917_VALUE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-super {p0, p1}, Ln;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 208
    return-void
.end method
