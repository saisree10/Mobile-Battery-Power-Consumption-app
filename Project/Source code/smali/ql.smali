.class public Lql;
.super Lpv;
.source "ToolboxListActivity.java"


# instance fields
.field protected b:Landroid/widget/ArrayAdapter;

.field protected c:Ljava/util/List;

.field protected d:Lpj;

.field protected e:Lox;

.field protected f:Z

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lpv;-><init>()V

    .line 84
    const-string v0, "DEFAULT"

    iput-object v0, p0, Lql;->g:Ljava/lang/String;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lql;->f:Z

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lql;->h:Z

    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-static {}, Lra;->a()Lra;

    move-result-object v0

    new-instance v1, Lqm;

    invoke-direct {v1, p0, p1, p2}, Lqm;-><init>(Lql;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Lra;->a(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lql;->a:Landroid/app/Activity;

    invoke-static {v0}, Lpi;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget v0, Lok;->toolbox_loading_apps_info_des:I

    invoke-virtual {p0, v0}, Lql;->a(I)V

    .line 193
    iget-object v0, p0, Lql;->a:Landroid/app/Activity;

    invoke-static {v0}, Lpa;->a(Landroid/content/Context;)Lpa;

    move-result-object v0

    iget-object v1, p0, Lql;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpa;->c(Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    sget v0, Lok;->toolbox_no_apps_des_no_network_a:I

    invoke-virtual {p0, v0}, Lql;->b(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/util/List;)Landroid/widget/ArrayAdapter;
    .locals 3
    .parameter

    .prologue
    .line 102
    new-instance v0, Lqn;

    iget-object v1, p0, Lql;->a:Landroid/app/Activity;

    iget-object v2, p0, Lql;->c:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lqn;-><init>(Lql;Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lql;->o()V

    .line 145
    return-void
.end method

.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lql;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lql;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lql;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0}, Lql;->j()V

    .line 225
    const/16 v0, 0x193

    if-ne p2, v0, :cond_5

    .line 226
    iget-object v0, p0, Lql;->a:Landroid/app/Activity;

    invoke-static {v0}, Loq;->a(Landroid/content/Context;)Loq;

    move-result-object v0

    iget-object v2, p0, Lql;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Loq;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 228
    iget-object v0, p0, Lql;->a:Landroid/app/Activity;

    invoke-static {v0, v2}, Lpi;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lql;->c:Ljava/util/List;

    .line 229
    const-string v3, "ToolboxListActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data size = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lql;->c:Ljava/util/List;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lql;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 232
    iget-object v0, p0, Lql;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 233
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 234
    iget-object v3, p0, Lql;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 229
    :cond_1
    iget-object v0, p0, Lql;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 236
    :cond_2
    iget-object v0, p0, Lql;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 238
    iget-boolean v0, p0, Lql;->f:Z

    if-nez v0, :cond_4

    .line 240
    iget-object v0, p0, Lql;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 241
    sget v0, Lok;->toolbox_no_apps_des_toolbox_empty_a:I

    invoke-virtual {p0, v0}, Lql;->b(I)V

    goto :goto_0

    .line 243
    :cond_3
    iget-object v0, p0, Lql;->c:Ljava/util/List;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lql;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 246
    :cond_4
    iput-boolean v1, p0, Lql;->h:Z

    goto :goto_0

    .line 250
    :cond_5
    sget v0, Lok;->toolbox_no_apps_des_network_error_b:I

    invoke-virtual {p0, v0}, Lql;->b(I)V

    goto/16 :goto_0
.end method

.method protected b(Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    const-string v0, "ToolboxListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lql;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    .line 205
    iget-object v0, p0, Lql;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 206
    if-nez v0, :cond_1

    .line 216
    :cond_0
    :goto_1
    return-void

    .line 210
    :cond_1
    iget-object v5, v0, Lou;->f:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 211
    if-ne p2, v1, :cond_2

    :goto_2
    iput-boolean v1, v0, Lou;->t:Z

    .line 212
    iget-object v0, p0, Lql;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 211
    goto :goto_2

    .line 204
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method

.method protected l()Lpj;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lqb;

    iget-object v1, p0, Lql;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lqb;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected m()Lox;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lox;

    invoke-direct {v0}, Lox;-><init>()V

    .line 107
    sget v1, Loh;->toolbox_default_app_icon:I

    iput v1, v0, Lox;->a:I

    .line 109
    invoke-virtual {p0}, Lql;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 110
    sget v2, Log;->toolbox_apps_listview_item_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 112
    iput v1, v0, Lox;->b:I

    .line 113
    iput v1, v0, Lox;->c:I

    .line 115
    return-object v0
.end method

.method protected n()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 120
    invoke-super {p0, p1}, Lpv;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lql;->l()Lpj;

    move-result-object v0

    iput-object v0, p0, Lql;->d:Lpj;

    .line 122
    invoke-virtual {p0}, Lql;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ad_tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    iput-object v0, p0, Lql;->g:Ljava/lang/String;

    .line 127
    :cond_0
    invoke-virtual {p0}, Lql;->m()Lox;

    move-result-object v0

    iput-object v0, p0, Lql;->e:Lox;

    .line 128
    invoke-virtual {p0}, Lql;->n()V

    .line 129
    iget-object v0, p0, Lql;->a:Landroid/app/Activity;

    invoke-static {v0}, Loq;->a(Landroid/content/Context;)Loq;

    move-result-object v0

    iget-object v1, p0, Lql;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Loq;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lql;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lpi;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lql;->c:Ljava/util/List;

    .line 131
    const-string v0, "ToolboxListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lql;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lql;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Lql;->a(Ljava/util/List;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lql;->b:Landroid/widget/ArrayAdapter;

    .line 133
    iget-object v0, p0, Lql;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lql;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    iget-object v0, p0, Lql;->a:Landroid/app/Activity;

    invoke-static {v0}, Lpa;->a(Landroid/content/Context;)Lpa;

    move-result-object v0

    iget-object v1, p0, Lql;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpa;->b(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-virtual {p0}, Lql;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 167
    if-ge p3, v0, :cond_0

    .line 168
    invoke-virtual/range {p0 .. p5}, Lql;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_0
    sub-int v0, p3, v0

    .line 172
    iget-object v1, p0, Lql;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 173
    iget-object v1, p0, Lql;->d:Lpj;

    invoke-virtual {v1, v0}, Lpj;->a(Lou;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lpv;->onPause()V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lql;->f:Z

    .line 162
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-super {p0}, Lpv;->onResume()V

    .line 150
    iput-boolean v2, p0, Lql;->f:Z

    .line 151
    iget-object v0, p0, Lql;->a:Landroid/app/Activity;

    iget-object v1, p0, Lql;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lop;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lql;->c:Ljava/util/List;

    iget-boolean v1, p0, Lql;->h:Z

    invoke-direct {p0, v0, v1}, Lql;->a(Ljava/util/List;Z)V

    .line 153
    iget-object v0, p0, Lql;->a:Landroid/app/Activity;

    invoke-static {v0}, Loq;->a(Landroid/content/Context;)Loq;

    move-result-object v0

    iget-object v1, p0, Lql;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Loq;->a(Ljava/lang/String;Z)V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lql;->h:Z

    .line 156
    return-void
.end method
