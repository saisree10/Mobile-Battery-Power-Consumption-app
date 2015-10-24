.class public Lanc;
.super Ljava/lang/Object;
.source "ModeSettingsMgr.java"


# instance fields
.field final synthetic a:Lanb;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lanb;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 118
    iput-object p1, p0, Lanc;->a:Lanb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanc;->b:Ljava/util/ArrayList;

    .line 120
    invoke-static {p2}, Lamq;->a(I)I

    move-result v0

    .line 121
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 122
    :goto_0
    invoke-static {}, Lanb;->b()Lamh;

    move-result-object v2

    invoke-virtual {v2}, Lamh;->c()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 123
    if-eq v0, v5, :cond_0

    if-ne v0, v6, :cond_1

    .line 124
    :cond_0
    iget-object v2, p0, Lanc;->b:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    iget-object v2, p0, Lanc;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    :cond_2
    if-nez v0, :cond_5

    move v0, v1

    .line 130
    :goto_2
    invoke-static {}, Lanb;->b()Lamh;

    move-result-object v2

    invoke-virtual {v2}, Lamh;->c()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 131
    if-eq v0, v5, :cond_3

    if-ne v0, v6, :cond_4

    .line 132
    :cond_3
    iget-object v2, p0, Lanc;->b:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 134
    :cond_4
    iget-object v2, p0, Lanc;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 137
    :cond_5
    if-ne v0, v4, :cond_7

    .line 138
    iget-object v0, p0, Lanc;->b:Ljava/util/ArrayList;

    sget v2, Lahp;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lanc;->b:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lanc;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lanc;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lanc;->b:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lanc;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lanc;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lanc;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lanc;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lanc;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lanc;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lanc;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lanc;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_6
    return-void

    .line 156
    :cond_7
    :goto_4
    invoke-static {}, Lanb;->b()Lamh;

    move-result-object v0

    invoke-virtual {v0}, Lamh;->c()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 158
    invoke-static {p1}, Lanb;->a(Lanb;)Lamx;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lamx;->b(II)I

    move-result v2

    .line 159
    invoke-static {}, Lanb;->b()Lamh;

    move-result-object v0

    invoke-virtual {v0}, Lamh;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahp;

    .line 160
    iget-object v3, p0, Lanc;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lahp;->c(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lanc;->b:Ljava/util/ArrayList;

    return-object v0
.end method
