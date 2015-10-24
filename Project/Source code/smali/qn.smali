.class Lqn;
.super Landroid/widget/ArrayAdapter;
.source "ToolboxListActivity.java"


# instance fields
.field final synthetic a:Lql;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lql;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lqn;->a:Lql;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 43
    iput-object p2, p0, Lqn;->b:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lqn;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lqn;->c:Landroid/view/LayoutInflater;

    .line 45
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lqn;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 51
    if-nez p2, :cond_0

    .line 52
    iget-object v1, p0, Lqn;->c:Landroid/view/LayoutInflater;

    sget v2, Loj;->toolbox_apps_listview_item:I

    invoke-virtual {v1, v2, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 53
    new-instance v2, Lqo;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Lqo;-><init>(Lqm;)V

    .line 54
    sget v1, Loi;->toolbox_apps_listitem_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lqo;->b:Landroid/widget/ImageView;

    .line 56
    sget v1, Loi;->toolbox_apps_listitem_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lqo;->c:Landroid/widget/TextView;

    .line 58
    sget v1, Loi;->toolbox_apps_listitem_desc:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lqo;->d:Landroid/widget/TextView;

    .line 60
    sget v1, Loi;->toolbox_apps_listitem_icon_installed:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lqo;->a:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 67
    :goto_0
    iget-object v2, v1, Lqo;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lou;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v2, v1, Lqo;->d:Landroid/widget/TextView;

    iget-object v3, v0, Lou;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-static {}, Lov;->a()Lov;

    move-result-object v2

    iget-object v3, v0, Lou;->l:Ljava/lang/String;

    iget-object v4, v1, Lqo;->b:Landroid/widget/ImageView;

    iget-object v5, p0, Lqn;->a:Lql;

    iget-object v5, v5, Lql;->e:Lox;

    invoke-virtual {v2, v3, v4, v5}, Lov;->a(Ljava/lang/String;Landroid/widget/ImageView;Lox;)V

    .line 72
    iget-boolean v0, v0, Lou;->t:Z

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, v1, Lqo;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    :goto_1
    return-object p2

    .line 64
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqo;

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, v1, Lqo;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
