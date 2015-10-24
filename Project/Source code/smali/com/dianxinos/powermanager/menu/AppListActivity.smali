.class public Lcom/dianxinos/powermanager/menu/AppListActivity;
.super Laao;
.source "AppListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Landroid/content/pm/PackageManager;

.field private b:Landroid/widget/ListView;

.field private c:Z

.field private d:Ljava/util/ArrayList;

.field private e:Lala;

.field private f:Laln;

.field private g:Ljava/util/LinkedHashSet;

.field private h:Ljava/util/ArrayList;

.field private i:Lalc;

.field private j:Lcom/dianxinos/powermanager/ui/MainTitle;

.field private k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Laao;-><init>()V

    .line 254
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/menu/AppListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/menu/AppListActivity;)Lala;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->e:Lala;

    return-object v0
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/menu/AppListActivity;)Laln;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->f:Laln;

    return-object v0
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/menu/AppListActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->c:Z

    return v0
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/menu/AppListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->f:Laln;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Laln;->a(Ljava/util/LinkedHashSet;)V

    .line 338
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->f:Laln;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Laln;->a(Ljava/util/ArrayList;)V

    .line 339
    invoke-super {p0}, Laao;->onBackPressed()V

    .line 340
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/AppListActivity;->setContentView(I)V

    .line 55
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->j:Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 56
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/menu/AppListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->a:Landroid/content/pm/PackageManager;

    .line 58
    invoke-static {p0}, Laln;->a(Landroid/content/Context;)Laln;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->f:Laln;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->d:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Lala;

    invoke-direct {v0, p0, p0}, Lala;-><init>(Lcom/dianxinos/powermanager/menu/AppListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->e:Lala;

    .line 62
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->b:Landroid/widget/ListView;

    .line 63
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->e:Lala;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->k:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->k:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0263

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->e:Lala;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lala;->a(Ljava/util/ArrayList;)V

    .line 70
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    new-instance v0, Lalc;

    invoke-direct {v0, p0}, Lalc;-><init>(Lcom/dianxinos/powermanager/menu/AppListActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->i:Lalc;

    .line 73
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->i:Lalc;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lalc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->g:Ljava/util/LinkedHashSet;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->h:Ljava/util/ArrayList;

    .line 76
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->d:Ljava/util/ArrayList;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 96
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->i:Lalc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->i:Lalc;

    invoke-virtual {v0}, Lalc;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->i:Lalc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lalc;->cancel(Z)Z

    .line 101
    :cond_0
    invoke-super {p0}, Laao;->onDestroy()V

    .line 102
    return-void

    .line 96
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    check-cast v0, Landroid/widget/CheckBox;

    .line 226
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lakz;

    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lakz;

    iget-boolean v2, v2, Lakz;->a:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lakz;->a:Z

    .line 227
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lakz;

    iget-boolean v1, v1, Lakz;->a:Z

    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 229
    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->g:Ljava/util/LinkedHashSet;

    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakz;

    invoke-static {v0}, Lakz;->b(Lakz;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->h:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakz;

    invoke-static {v0}, Lakz;->b(Lakz;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 237
    :goto_1
    return-void

    .line 226
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->g:Ljava/util/LinkedHashSet;

    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakz;

    invoke-static {v0}, Lakz;->b(Lakz;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 235
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->h:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakz;

    invoke-static {v0}, Lakz;->b(Lakz;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Laao;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->j:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a012b

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setTitleText(I)V

    .line 82
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->j:Lcom/dianxinos/powermanager/ui/MainTitle;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/MainTitle;->a()V

    .line 83
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->j:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 84
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppListActivity;->j:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Laky;

    invoke-direct {v1, p0}, Laky;-><init>(Lcom/dianxinos/powermanager/menu/AppListActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method
