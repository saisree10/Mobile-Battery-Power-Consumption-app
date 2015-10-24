.class public abstract Laam;
.super Landroid/app/Activity;
.source "DXPowerActivity.java"

# interfaces
.implements Lalt;


# instance fields
.field private a:Lalr;

.field private b:Landroid/content/Intent;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Laam;->c:Z

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    new-instance v1, Lalu;

    invoke-direct {v1}, Lalu;-><init>()V

    .line 95
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0240

    invoke-virtual {p0, v2}, Laam;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lalu;->a(Ljava/lang/String;)V

    .line 96
    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0201e8

    invoke-virtual {v1, v2}, Lalu;->a(I)V

    .line 97
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lalu;->b(I)V

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Laam;->a:Lalr;

    invoke-virtual {v1}, Lalr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    :try_start_0
    iget-object v1, p0, Laam;->a:Lalr;

    invoke-virtual {v1, v0}, Lalr;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    const-string v2, "Egads!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    const v2, 0x7f070007

    .line 114
    iget-object v0, p0, Laam;->a:Lalr;

    invoke-virtual {v0}, Lalr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Laam;->a:Lalr;

    invoke-virtual {v0}, Lalr;->b()V

    .line 132
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Laam;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0}, Laam;->getParent()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 126
    :goto_1
    if-eqz v0, :cond_2

    .line 127
    iget-object v1, p0, Laam;->a:Lalr;

    invoke-virtual {v1, v0}, Lalr;->a(Landroid/view/View;)V

    goto :goto_0

    .line 123
    :cond_1
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p0, v2}, Laam;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 129
    :cond_2
    const-string v0, "DXPowerActivity"

    const-string v1, "Ignore menu action."

    invoke-static {v0, v1}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()Landroid/content/Intent;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 135
    new-instance v5, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    const-string v0, "text/plain"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0228

    invoke-virtual {p0, v0}, Laam;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a010d

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const/4 v0, 0x1

    const-string v6, "http://dxurl.cn/dxbs/share_feature_gp"

    aput-object v6, v4, v0

    invoke-virtual {p0, v2, v4}, Laam;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0}, Laam;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 144
    if-nez v6, :cond_0

    move-object v0, v1

    .line 164
    :goto_0
    return-object v0

    .line 147
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 149
    sget-object v0, Lazg;->b:[Ljava/lang/String;

    array-length v8, v0

    move v4, v3

    .line 150
    :goto_1
    if-ge v4, v8, :cond_3

    move v2, v3

    .line 151
    :goto_2
    if-ge v2, v7, :cond_2

    .line 153
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 154
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 155
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v10, Lazg;->b:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 158
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 151
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 150
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 164
    goto :goto_0
.end method


# virtual methods
.method public a(Lalu;)V
    .locals 2
    .parameter

    .prologue
    .line 180
    invoke-virtual {p1}, Lalu;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/PowerMgrInfoAcitvity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    invoke-virtual {p0, v0}, Laam;->startActivity(Landroid/content/Intent;)V

    .line 184
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 207
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f040004

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040005

    invoke-virtual {p0, v0, v1}, Laam;->overridePendingTransition(II)V

    .line 208
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Laam;->a:Lalr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laam;->a:Lalr;

    invoke-virtual {v0}, Lalr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Laam;->a:Lalr;

    invoke-virtual {v0}, Lalr;->b()V

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance v0, Lalr;

    invoke-virtual {p0}, Laam;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lalr;-><init>(Landroid/content/Context;Lalt;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Laam;->a:Lalr;

    .line 50
    iget-object v0, p0, Laam;->a:Lalr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lalr;->a(Z)V

    .line 51
    iget-object v0, p0, Laam;->a:Lalr;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lalr;->a(I)V

    .line 52
    iget-object v0, p0, Laam;->a:Lalr;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lalr;->b(I)V

    .line 54
    invoke-direct {p0}, Laam;->c()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Laam;->b:Landroid/content/Intent;

    .line 55
    invoke-direct {p0}, Laam;->a()V

    .line 56
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 62
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 63
    iget-boolean v1, p0, Laam;->c:Z

    if-eqz v1, :cond_0

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Laam;->c:Z

    .line 65
    invoke-direct {p0}, Laam;->b()V

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 69
    iget-object v1, p0, Laam;->a:Lalr;

    if-eqz v1, :cond_2

    iget-object v1, p0, Laam;->a:Lalr;

    invoke-virtual {v1}, Lalr;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Laam;->a:Lalr;

    invoke-virtual {v1}, Lalr;->b()V

    goto :goto_0

    .line 74
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 79
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 80
    iput-boolean v0, p0, Laam;->c:Z

    .line 83
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Laam;->a:Lalr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laam;->a:Lalr;

    invoke-virtual {v0}, Lalr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Laam;->a:Lalr;

    invoke-virtual {v0}, Lalr;->b()V

    .line 192
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 193
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 173
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 213
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f040006

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Laam;->overridePendingTransition(II)V

    .line 214
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 219
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f040006

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Laam;->overridePendingTransition(II)V

    .line 220
    return-void
.end method
