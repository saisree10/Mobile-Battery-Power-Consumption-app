.class public Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;
.super Laao;
.source "AppWhiteListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Ljava/util/ArrayList;

.field private c:Lalj;

.field private d:Laln;

.field private e:Ljava/util/ArrayList;

.field private f:Lall;

.field private g:Lcom/dianxinos/powermanager/ui/MainTitle;

.field private h:Lavc;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Laao;-><init>()V

    .line 51
    new-instance v0, Lalf;

    invoke-direct {v0, p0}, Lalf;-><init>(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->i:Landroid/os/Handler;

    .line 225
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)Lalj;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->c:Lalj;

    return-object v0
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)Laln;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->d:Laln;

    return-object v0
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->i:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->h:Lavc;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lavc;

    sget-object v1, Lly;->j:Lcom/dianxinos/dxbs/R$style;

    const v1, 0x7f0b001a

    invoke-direct {v0, p0, v1}, Lavc;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->h:Lavc;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->h:Lavc;

    invoke-virtual {v0}, Lavc;->show()V

    .line 301
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->h:Lavc;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->h:Lavc;

    invoke-virtual {v0}, Lavc;->dismiss()V

    .line 307
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->d:Laln;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Laln;->a(Ljava/util/ArrayList;)V

    .line 293
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->finish()V

    .line 294
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->setContentView(I)V

    .line 68
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->g:Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->b:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Lalj;

    invoke-direct {v0, p0, p0}, Lalj;-><init>(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->c:Lalj;

    .line 72
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->a:Landroid/widget/ListView;

    .line 73
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->c:Lalj;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a012e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->c:Lalj;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lalj;->a(Ljava/util/ArrayList;)V

    .line 80
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    invoke-static {p0}, Laln;->a(Landroid/content/Context;)Laln;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->d:Laln;

    .line 82
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->d:Laln;

    invoke-virtual {v0, p0}, Laln;->b(Landroid/content/Context;)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->e:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    invoke-super {p0}, Laao;->onDestroy()V

    .line 127
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    check-cast v0, Landroid/widget/CheckBox;

    .line 199
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lali;

    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lali;

    iget-boolean v2, v2, Lali;->a:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lali;->a:Z

    .line 200
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lali;

    iget-boolean v1, v1, Lali;->a:Z

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 202
    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lali;

    invoke-static {v0}, Lali;->a(Lali;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    :goto_1
    return-void

    .line 199
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lali;

    invoke-static {v0}, Lali;->a(Lali;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Laao;->onPause()V

    .line 115
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->f:Lall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->f:Lall;

    invoke-virtual {v0}, Lall;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->f:Lall;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lall;->cancel(Z)Z

    .line 121
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lall;

    invoke-direct {v0, p0}, Lall;-><init>(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->f:Lall;

    .line 91
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->f:Lall;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lall;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->g:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a012a

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setTitleText(I)V

    .line 93
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->g:Lcom/dianxinos/powermanager/ui/MainTitle;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/MainTitle;->a()V

    .line 94
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->g:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 95
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->g:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Lalg;

    invoke-direct {v1, p0}, Lalg;-><init>(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->g:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203e2

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setRightButtonIcon(I)V

    .line 102
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->g:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Lalh;

    invoke-direct {v1, p0}, Lalh;-><init>(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setRightButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-super {p0}, Laao;->onResume()V

    .line 110
    return-void
.end method
