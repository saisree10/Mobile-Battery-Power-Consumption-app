.class public Lavw;
.super Ljava/lang/Object;
.source "WheelView.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lavw;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lavw;->d:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    .line 76
    return-void
.end method

.method private a(Ljava/util/List;)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 137
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 138
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 139
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    if-nez p2, :cond_0

    .line 114
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 117
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-object p2
.end method

.method private a(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lavw;->d:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getViewAdapter()Lavn;

    move-result-object v0

    invoke-virtual {v0}, Lavn;->a()I

    move-result v0

    .line 124
    if-ltz p2, :cond_0

    if-lt p2, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lavw;->d:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-virtual {v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    iget-object v0, p0, Lavw;->c:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lavw;->a(Landroid/view/View;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lavw;->c:Ljava/util/List;

    .line 134
    :goto_0
    return-void

    .line 128
    :cond_1
    :goto_1
    if-gez p2, :cond_2

    .line 129
    add-int/2addr p2, v0

    goto :goto_1

    .line 131
    :cond_2
    rem-int v0, p2, v0

    .line 132
    iget-object v0, p0, Lavw;->b:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lavw;->a(Landroid/view/View;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lavw;->b:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/LinearLayout;ILavt;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    .line 80
    const/4 v0, 0x0

    move v1, p2

    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 81
    invoke-virtual {p3, p2}, Lavt;->a(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lavw;->a(Landroid/view/View;I)V

    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 84
    if-nez v0, :cond_0

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 90
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 88
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_2
    return v1
.end method

.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lavw;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lavw;->a(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lavw;->c:Ljava/util/List;

    invoke-direct {p0, v0}, Lavw;->a(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lavw;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lavw;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    :cond_0
    iget-object v0, p0, Lavw;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lavw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    :cond_1
    return-void
.end method
