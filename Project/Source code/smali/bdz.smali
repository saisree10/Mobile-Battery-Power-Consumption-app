.class public abstract Lbdz;
.super Lbdr;
.source "XYChart.java"


# instance fields
.field private a:F

.field protected b:Lbec;

.field protected c:Lbei;

.field private d:F

.field private e:Lbea;

.field private f:Landroid/graphics/Rect;

.field private final g:Ljava/util/Map;

.field private h:Ljava/util/Map;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lbdr;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbdz;->g:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbdz;->h:Ljava/util/Map;

    .line 76
    return-void
.end method

.method public constructor <init>(Lbec;Lbei;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Lbdr;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbdz;->g:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbdz;->h:Ljava/util/Map;

    .line 85
    iput-object p1, p0, Lbdz;->b:Lbec;

    .line 86
    iput-object p2, p0, Lbdz;->c:Lbei;

    .line 87
    return-void
.end method

.method private a(Landroid/graphics/Paint$Align;)I
    .locals 2
    .parameter

    .prologue
    .line 819
    const/4 v0, 0x4

    .line 820
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne p1, v1, :cond_0

    .line 821
    neg-int v0, v0

    .line 823
    :cond_0
    return v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter

    .prologue
    .line 480
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 481
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 482
    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 486
    :cond_1
    return-object v1
.end method

.method private a(Landroid/graphics/Canvas;FZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 643
    if-eqz p3, :cond_0

    .line 644
    iget v0, p0, Lbdz;->a:F

    div-float v0, v2, v0

    iget v1, p0, Lbdz;->a:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 645
    iget v0, p0, Lbdz;->d:F

    iget v1, p0, Lbdz;->d:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 646
    neg-float v0, p2

    iget-object v1, p0, Lbdz;->e:Lbea;

    invoke-virtual {v1}, Lbea;->a()F

    move-result v1

    iget-object v2, p0, Lbdz;->e:Lbea;

    invoke-virtual {v2}, Lbea;->b()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 652
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lbdz;->e:Lbea;

    invoke-virtual {v0}, Lbea;->a()F

    move-result v0

    iget-object v1, p0, Lbdz;->e:Lbea;

    invoke-virtual {v1}, Lbea;->b()F

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 649
    iget v0, p0, Lbdz;->d:F

    neg-float v0, v0

    iget v1, p0, Lbdz;->d:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 650
    iget v0, p0, Lbdz;->a:F

    iget v1, p0, Lbdz;->a:F

    div-float v1, v2, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    invoke-virtual {p6, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 547
    invoke-virtual {p6, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 548
    invoke-virtual {p6, p3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 549
    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 550
    invoke-virtual {p6, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 551
    return-void
.end method


# virtual methods
.method public a()Lbdx;
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lbea;)Lbeb;
    .locals 7
    .parameter

    .prologue
    .line 871
    iget-object v0, p0, Lbdz;->h:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 872
    iget-object v0, p0, Lbdz;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 877
    const/4 v2, 0x0

    .line 878
    iget-object v0, p0, Lbdz;->h:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Lbdz;->h:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lbds;

    .line 881
    if-eqz v5, :cond_0

    .line 882
    invoke-virtual {v5}, Lbds;->a()Landroid/graphics/RectF;

    move-result-object v0

    .line 883
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbea;->a()F

    move-result v4

    invoke-virtual {p1}, Lbea;->b()F

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    new-instance v0, Lbeb;

    invoke-virtual {v5}, Lbds;->b()D

    move-result-wide v3

    invoke-virtual {v5}, Lbds;->c()D

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lbeb;-><init>(IIDD)V

    .line 891
    :goto_2
    return-object v0

    .line 887
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 872
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 891
    :cond_2
    invoke-super {p0, p1}, Lbdr;->a(Lbea;)Lbeb;

    move-result-object v0

    goto :goto_2
.end method

.method protected a(DDI)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 459
    invoke-static {p1, p2, p3, p4, p5}, Lbev;->a(DDI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a([D[DI)Ljava/util/Map;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 464
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 465
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-wide v3, p1, v0

    aget-wide v5, p2, v0

    iget-object v7, p0, Lbdz;->c:Lbei;

    invoke-virtual {v7}, Lbei;->P()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Lbev;->a(DDI)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lbdz;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_0
    return-object v1
.end method

.method public a(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 46
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->u()Z

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    div-int/lit8 v5, p5, 0x5

    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    invoke-virtual {v6}, Lbei;->K()F

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lbdz;->a(Lbef;IF)I

    move-result v13

    .line 109
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->F()[I

    move-result-object v29

    .line 110
    const/4 v4, 0x1

    aget v4, v29, v4

    add-int v8, p2, v4

    .line 111
    const/4 v4, 0x0

    aget v4, v29, v4

    add-int v37, p3, v4

    .line 112
    add-int v4, p2, p4

    const/4 v5, 0x3

    aget v5, v29, v5

    sub-int v9, v4, v5

    .line 113
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->b:Lbec;

    invoke-virtual {v4}, Lbec;->b()I

    move-result v30

    .line 114
    move/from16 v0, v30

    new-array v7, v0, [Ljava/lang/String;

    .line 115
    const/4 v4, 0x0

    :goto_0
    move/from16 v0, v30

    if-ge v4, v0, :cond_0

    .line 116
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->b:Lbec;

    invoke-virtual {v5, v4}, Lbec;->a(I)Lbed;

    move-result-object v5

    invoke-virtual {v5}, Lbed;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->p()Z

    move-result v4

    if-eqz v4, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->o()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 119
    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    const/4 v15, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v4 .. v15}, Lbdz;->a(Landroid/graphics/Canvas;Lbef;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move-result v13

    move/from16 v33, v13

    .line 122
    :goto_1
    add-int v4, p3, p5

    const/4 v5, 0x2

    aget v5, v29, v5

    sub-int/2addr v4, v5

    sub-int v4, v4, v33

    .line 123
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->f:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    .line 124
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lbdz;->f:Landroid/graphics/Rect;

    .line 126
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->f:Landroid/graphics/Rect;

    move/from16 v0, v37

    invoke-virtual {v5, v8, v0, v9, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 127
    move-object/from16 v0, p0

    iget-object v11, v0, Lbdz;->c:Lbei;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move-object/from16 v17, p6

    invoke-virtual/range {v10 .. v19}, Lbdz;->a(Lbef;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 129
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5}, Lbei;->s()Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    invoke-virtual {v6}, Lbei;->s()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    invoke-virtual {v6}, Lbei;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Typeface;->getStyle()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    invoke-virtual {v6}, Lbei;->r()I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 134
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5}, Lbei;->s()Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 135
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5}, Lbei;->s()Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 141
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5}, Lbei;->H()Lbej;

    move-result-object v18

    .line 142
    sget-object v5, Lbej;->b:Lbej;

    move-object/from16 v0, v18

    if-ne v0, v5, :cond_36

    .line 143
    sub-int v9, v9, v33

    .line 144
    add-int/lit8 v5, v33, -0x14

    add-int/2addr v4, v5

    move/from16 v34, v4

    move/from16 v35, v9

    .line 146
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lbej;->a()I

    move-result v38

    .line 147
    const/16 v4, 0x5a

    move/from16 v0, v38

    if-ne v0, v4, :cond_8

    const/4 v4, 0x1

    move/from16 v36, v4

    .line 148
    :goto_4
    move/from16 v0, p5

    int-to-float v4, v0

    move/from16 v0, p4

    int-to-float v5, v0

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lbdz;->a:F

    .line 149
    sub-int v4, p4, p5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lbdz;->d:F

    .line 150
    move-object/from16 v0, p0

    iget v4, v0, Lbdz;->a:F

    const/high16 v5, 0x3f80

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    .line 151
    move-object/from16 v0, p0

    iget v4, v0, Lbdz;->d:F

    const/high16 v5, -0x4080

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lbdz;->d:F

    .line 153
    :cond_5
    new-instance v4, Lbea;

    add-int v5, p2, p4

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-int v6, p3, p5

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lbea;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lbdz;->e:Lbea;

    .line 154
    if-eqz v36, :cond_6

    .line 155
    move/from16 v0, v38

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lbdz;->a(Landroid/graphics/Canvas;FZ)V

    .line 158
    :cond_6
    const v5, -0x7fffffff

    .line 159
    const/4 v4, 0x0

    :goto_5
    move/from16 v0, v30

    if-ge v4, v0, :cond_9

    .line 160
    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->b:Lbec;

    invoke-virtual {v6, v4}, Lbec;->a(I)Lbed;

    move-result-object v6

    invoke-virtual {v6}, Lbed;->a()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 137
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5}, Lbei;->q()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    invoke-virtual {v6}, Lbei;->r()I

    move-result v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_2

    .line 147
    :cond_8
    const/4 v4, 0x0

    move/from16 v36, v4

    goto/16 :goto_4

    .line 162
    :cond_9
    add-int/lit8 v39, v5, 0x1

    .line 163
    if-gez v39, :cond_b

    .line 456
    :cond_a
    :goto_6
    return-void

    .line 166
    :cond_b
    move/from16 v0, v39

    new-array v0, v0, [D

    move-object/from16 v31, v0

    .line 167
    move/from16 v0, v39

    new-array v0, v0, [D

    move-object/from16 v32, v0

    .line 168
    move/from16 v0, v39

    new-array v0, v0, [D

    move-object/from16 v40, v0

    .line 169
    move/from16 v0, v39

    new-array v0, v0, [D

    move-object/from16 v41, v0

    .line 170
    move/from16 v0, v39

    new-array v6, v0, [Z

    .line 171
    move/from16 v0, v39

    new-array v9, v0, [Z

    .line 172
    move/from16 v0, v39

    new-array v10, v0, [Z

    .line 173
    move/from16 v0, v39

    new-array v11, v0, [Z

    .line 175
    const/4 v4, 0x0

    :goto_7
    move/from16 v0, v39

    if-ge v4, v0, :cond_d

    .line 176
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5, v4}, Lbei;->g(I)D

    move-result-wide v12

    aput-wide v12, v31, v4

    .line 177
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5, v4}, Lbei;->i(I)D

    move-result-wide v12

    aput-wide v12, v32, v4

    .line 178
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5, v4}, Lbei;->k(I)D

    move-result-wide v12

    aput-wide v12, v40, v4

    .line 179
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5, v4}, Lbei;->m(I)D

    move-result-wide v12

    aput-wide v12, v41, v4

    .line 180
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5, v4}, Lbei;->h(I)Z

    move-result v5

    aput-boolean v5, v6, v4

    .line 181
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5, v4}, Lbei;->j(I)Z

    move-result v5

    aput-boolean v5, v9, v4

    .line 182
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5, v4}, Lbei;->l(I)Z

    move-result v5

    aput-boolean v5, v10, v4

    .line 183
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5, v4}, Lbei;->n(I)Z

    move-result v5

    aput-boolean v5, v11, v4

    .line 184
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->g:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_c

    .line 185
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->g:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x4

    new-array v13, v13, [D

    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 188
    :cond_d
    move/from16 v0, v39

    new-array v0, v0, [D

    move-object/from16 v42, v0

    .line 189
    move/from16 v0, v39

    new-array v0, v0, [D

    move-object/from16 v43, v0

    .line 190
    const/4 v4, 0x0

    move v5, v4

    :goto_8
    move/from16 v0, v30

    if-ge v5, v0, :cond_13

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->b:Lbec;

    invoke-virtual {v4, v5}, Lbec;->a(I)Lbed;

    move-result-object v12

    .line 192
    invoke-virtual {v12}, Lbed;->a()I

    move-result v13

    .line 193
    invoke-virtual {v12}, Lbed;->e()I

    move-result v4

    if-nez v4, :cond_f

    .line 190
    :cond_e
    :goto_9
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_8

    .line 196
    :cond_f
    aget-boolean v4, v6, v13

    if-nez v4, :cond_10

    .line 197
    invoke-virtual {v12}, Lbed;->f()D

    move-result-wide v14

    .line 198
    aget-wide v16, v31, v13

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    aput-wide v14, v31, v13

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->g:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v14, 0x0

    aget-wide v15, v31, v13

    aput-wide v15, v4, v14

    .line 201
    :cond_10
    aget-boolean v4, v9, v13

    if-nez v4, :cond_11

    .line 202
    invoke-virtual {v12}, Lbed;->h()D

    move-result-wide v14

    .line 203
    aget-wide v16, v32, v13

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    aput-wide v14, v32, v13

    .line 204
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->g:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v14, 0x1

    aget-wide v15, v32, v13

    aput-wide v15, v4, v14

    .line 206
    :cond_11
    aget-boolean v4, v10, v13

    if-nez v4, :cond_12

    .line 207
    invoke-virtual {v12}, Lbed;->g()D

    move-result-wide v14

    .line 208
    aget-wide v16, v40, v13

    double-to-float v4, v14

    float-to-double v14, v4

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    aput-wide v14, v40, v13

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->g:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v14, 0x2

    aget-wide v15, v40, v13

    aput-wide v15, v4, v14

    .line 211
    :cond_12
    aget-boolean v4, v11, v13

    if-nez v4, :cond_e

    .line 212
    invoke-virtual {v12}, Lbed;->i()D

    move-result-wide v14

    .line 213
    aget-wide v16, v41, v13

    double-to-float v4, v14

    float-to-double v14, v4

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    aput-wide v14, v41, v13

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->g:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v12, 0x3

    aget-wide v13, v41, v13

    aput-wide v13, v4, v12

    goto/16 :goto_9

    .line 217
    :cond_13
    const/4 v4, 0x0

    :goto_a
    move/from16 v0, v39

    if-ge v4, v0, :cond_16

    .line 218
    aget-wide v5, v32, v4

    aget-wide v9, v31, v4

    sub-double/2addr v5, v9

    const-wide/16 v9, 0x0

    cmpl-double v5, v5, v9

    if-eqz v5, :cond_14

    .line 219
    sub-int v5, v35, v8

    int-to-double v5, v5

    aget-wide v9, v32, v4

    aget-wide v11, v31, v4

    sub-double/2addr v9, v11

    div-double/2addr v5, v9

    aput-wide v5, v42, v4

    .line 221
    :cond_14
    aget-wide v5, v41, v4

    aget-wide v9, v40, v4

    sub-double/2addr v5, v9

    const-wide/16 v9, 0x0

    cmpl-double v5, v5, v9

    if-eqz v5, :cond_15

    .line 222
    sub-int v5, v34, v37

    int-to-double v5, v5

    aget-wide v9, v41, v4

    aget-wide v11, v40, v4

    sub-double/2addr v9, v11

    div-double/2addr v5, v9

    double-to-float v5, v5

    float-to-double v5, v5

    aput-wide v5, v43, v4

    .line 217
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 226
    :cond_16
    const/4 v4, 0x0

    .line 231
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lbdz;->h:Ljava/util/Map;

    .line 232
    const/16 v17, 0x0

    :goto_b
    move/from16 v0, v17

    move/from16 v1, v30

    if-ge v0, v1, :cond_21

    .line 233
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->b:Lbec;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lbec;->a(I)Lbed;

    move-result-object v9

    .line 234
    invoke-virtual {v9}, Lbed;->a()I

    move-result v44

    .line 235
    invoke-virtual {v9}, Lbed;->e()I

    move-result v5

    if-nez v5, :cond_17

    .line 232
    :goto_c
    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    .line 239
    :cond_17
    const/4 v6, 0x1

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lbei;->a(I)Lbeh;

    move-result-object v15

    .line 246
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 247
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 248
    move/from16 v0, v34

    int-to-float v4, v0

    move/from16 v0, v34

    int-to-double v10, v0

    aget-wide v12, v43, v44

    aget-wide v19, v40, v44

    mul-double v12, v12, v19

    add-double/2addr v10, v12

    double-to-float v5, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 249
    new-instance v45, Ljava/util/LinkedList;

    invoke-direct/range {v45 .. v45}, Ljava/util/LinkedList;-><init>()V

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->h:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    monitor-enter v9

    .line 254
    :try_start_0
    aget-wide v10, v31, v44

    aget-wide v12, v32, v44

    invoke-virtual {v15}, Lbeh;->i()Z

    move-result v14

    invoke-virtual/range {v9 .. v14}, Lbed;->a(DDZ)Ljava/util/SortedMap;

    move-result-object v4

    .line 256
    const/16 v19, -0x1

    .line 258
    invoke-interface {v4}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_d
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 259
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 260
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 261
    if-gez v19, :cond_19

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lbdz;->a(D)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual/range {p0 .. p0}, Lbdz;->e()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 262
    :cond_18
    invoke-virtual {v9, v10, v11}, Lbed;->a(D)I

    move-result v19

    .line 269
    :cond_19
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lbdz;->a(D)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 273
    int-to-double v4, v8

    aget-wide v23, v42, v44

    aget-wide v27, v31, v44

    sub-double v10, v10, v27

    mul-double v10, v10, v23

    add-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    move/from16 v0, v34

    int-to-double v4, v0

    aget-wide v10, v43, v44

    aget-wide v23, v40, v44

    sub-double v12, v12, v23

    mul-double/2addr v10, v12

    sub-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 316
    :catchall_0
    move-exception v4

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 275
    :cond_1a
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lbdz;->e()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 276
    int-to-double v4, v8

    aget-wide v12, v42, v44

    aget-wide v23, v31, v44

    sub-double v10, v10, v23

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    move/from16 v0, v34

    int-to-double v4, v0

    aget-wide v10, v43, v44

    aget-wide v12, v40, v44

    neg-double v12, v12

    mul-double/2addr v10, v12

    sub-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 279
    :cond_1b
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1c

    move-object/from16 v10, p0

    move-object v11, v9

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    move-object/from16 v14, v21

    .line 280
    invoke-virtual/range {v10 .. v19}, Lbdz;->a(Lbed;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lbeh;FILbej;I)V

    move-object/from16 v20, p0

    move/from16 v23, v16

    move/from16 v24, v17

    move/from16 v25, v19

    .line 282
    invoke-virtual/range {v20 .. v25}, Lbdz;->a(Ljava/util/List;Ljava/util/List;FII)[Lbds;

    move-result-object v4

    .line 284
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 285
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 286
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 287
    const/16 v19, -0x1

    .line 289
    :cond_1c
    const/4 v4, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 293
    :cond_1d
    invoke-virtual {v9}, Lbed;->d()I

    move-result v5

    .line 294
    if-lez v5, :cond_1f

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->h()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 297
    const/4 v4, 0x0

    :goto_e
    if-ge v4, v5, :cond_1f

    .line 298
    int-to-double v11, v8

    aget-wide v13, v42, v44

    invoke-virtual {v9, v4}, Lbed;->c(I)D

    move-result-wide v23

    aget-wide v25, v31, v44

    sub-double v23, v23, v25

    mul-double v13, v13, v23

    add-double/2addr v11, v13

    double-to-float v0, v11

    move/from16 v26, v0

    .line 300
    move/from16 v0, v34

    int-to-double v11, v0

    aget-wide v13, v43, v44

    invoke-virtual {v9, v4}, Lbed;->d(I)D

    move-result-wide v23

    aget-wide v27, v40, v44

    sub-double v23, v23, v27

    mul-double v13, v13, v23

    sub-double/2addr v11, v13

    double-to-float v0, v11

    move/from16 v27, v0

    .line 302
    invoke-virtual {v9, v4}, Lbed;->e(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v4}, Lbed;->e(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v11, v12, v13, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 304
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    add-float v11, v11, v26

    cmpg-float v11, v26, v11

    if-gez v11, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    int-to-float v11, v11

    cmpg-float v11, v27, v11

    if-gez v11, :cond_1e

    .line 305
    invoke-virtual {v9, v4}, Lbed;->e(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v28, p6

    invoke-virtual/range {v23 .. v28}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 297
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 310
    :cond_1f
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_20

    move-object/from16 v10, p0

    move-object v11, v9

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    move-object/from16 v14, v21

    .line 311
    invoke-virtual/range {v10 .. v19}, Lbdz;->a(Lbed;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lbeh;FILbej;I)V

    move-object/from16 v20, p0

    move/from16 v23, v16

    move/from16 v24, v17

    move/from16 v25, v19

    .line 312
    invoke-virtual/range {v20 .. v25}, Lbdz;->a(Ljava/util/List;Ljava/util/List;FII)[Lbds;

    move-result-object v4

    .line 314
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 316
    :cond_20
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v6

    goto/16 :goto_c

    .line 319
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lbdz;->c:Lbei;

    move-object/from16 v20, v0

    sub-int v25, p5, v34

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5}, Lbei;->U()I

    move-result v28

    move-object/from16 v19, p0

    move-object/from16 v21, p1

    move/from16 v22, p2

    move/from16 v23, v34

    move/from16 v24, p4

    move-object/from16 v26, p6

    invoke-virtual/range {v19 .. v28}, Lbdz;->a(Lbef;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lbdz;->c:Lbei;

    move-object/from16 v20, v0

    const/4 v5, 0x0

    aget v25, v29, v5

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5}, Lbei;->U()I

    move-result v28

    move-object/from16 v19, p0

    move-object/from16 v21, p1

    move/from16 v22, p2

    move/from16 v23, p3

    move/from16 v24, p4

    move-object/from16 v26, p6

    invoke-virtual/range {v19 .. v28}, Lbdz;->a(Lbef;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 323
    sget-object v5, Lbej;->a:Lbej;

    move-object/from16 v0, v18

    if-ne v0, v5, :cond_25

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lbdz;->c:Lbei;

    move-object/from16 v20, v0

    sub-int v24, v8, p2

    sub-int v25, p5, p3

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5}, Lbei;->U()I

    move-result v28

    move-object/from16 v19, p0

    move-object/from16 v21, p1

    move/from16 v22, p2

    move/from16 v23, p3

    move-object/from16 v26, p6

    invoke-virtual/range {v19 .. v28}, Lbdz;->a(Lbef;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lbdz;->c:Lbei;

    move-object/from16 v20, v0

    const/4 v5, 0x3

    aget v24, v29, v5

    sub-int v25, p5, p3

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5}, Lbei;->U()I

    move-result v28

    move-object/from16 v19, p0

    move-object/from16 v21, p1

    move/from16 v22, v35

    move/from16 v23, p3

    move-object/from16 v26, p6

    invoke-virtual/range {v19 .. v28}, Lbdz;->a(Lbef;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 335
    :cond_22
    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5}, Lbei;->k()Z

    move-result v5

    if-eqz v5, :cond_26

    if-eqz v4, :cond_26

    const/4 v4, 0x1

    .line 336
    :goto_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5}, Lbei;->l()Z

    move-result v5

    .line 337
    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    invoke-virtual {v6}, Lbei;->n()Z

    move-result v15

    .line 338
    if-nez v4, :cond_23

    if-eqz v5, :cond_2d

    .line 339
    :cond_23
    const/4 v5, 0x0

    aget-wide v10, v31, v5

    const/4 v5, 0x0

    aget-wide v12, v32, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5}, Lbei;->L()I

    move-result v14

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lbdz;->a(DDI)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lbdz;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v20

    .line 340
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lbdz;->a([D[DI)Ljava/util/Map;

    move-result-object v5

    .line 343
    if-eqz v4, :cond_35

    .line 344
    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    invoke-virtual {v6}, Lbei;->ac()I

    move-result v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 345
    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    invoke-virtual {v6}, Lbei;->i()F

    move-result v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 346
    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    invoke-virtual {v6}, Lbei;->ad()Landroid/graphics/Paint$Align;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    invoke-virtual {v6}, Lbei;->ad()Landroid/graphics/Paint$Align;

    move-result-object v6

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v6, v9, :cond_35

    .line 348
    int-to-float v6, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lbdz;->c:Lbei;

    invoke-virtual {v9}, Lbei;->i()F

    move-result v9

    const/high16 v10, 0x4080

    div-float/2addr v9, v10

    add-float/2addr v6, v9

    float-to-int v0, v6

    move/from16 v24, v0

    .line 351
    :goto_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    invoke-virtual {v6}, Lbei;->M()[Ljava/lang/Double;

    move-result-object v21

    const/4 v6, 0x0

    aget-wide v27, v42, v6

    const/4 v6, 0x0

    aget-wide v29, v31, v6

    const/4 v6, 0x0

    aget-wide v31, v32, v6

    move-object/from16 v19, p0

    move-object/from16 v22, p1

    move-object/from16 v23, p6

    move/from16 v25, v37

    move/from16 v26, v34

    invoke-virtual/range {v19 .. v32}, Lbdz;->a(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V

    move-object/from16 v19, p0

    move-object/from16 v20, v5

    move-object/from16 v21, p1

    move-object/from16 v22, p6

    move/from16 v23, v39

    move/from16 v24, v8

    move/from16 v25, v35

    move/from16 v26, v34

    move-object/from16 v27, v43

    move-object/from16 v28, v40

    .line 353
    invoke-virtual/range {v19 .. v28}, Lbdz;->a(Ljava/util/Map;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII[D[D)V

    .line 356
    if-eqz v4, :cond_2a

    .line 357
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5}, Lbei;->h()I

    move-result v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    const/4 v5, 0x0

    move v6, v5

    :goto_12
    move/from16 v0, v39

    if-ge v6, v0, :cond_2a

    .line 359
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5, v6}, Lbei;->y(I)Landroid/graphics/Paint$Align;

    move-result-object v16

    .line 360
    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5, v6}, Lbei;->p(I)[Ljava/lang/Double;

    move-result-object v17

    .line 361
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    const/4 v5, 0x0

    :goto_13
    move/from16 v0, v26

    if-ge v5, v0, :cond_29

    aget-object v9, v17, v5

    .line 362
    aget-wide v10, v40, v6

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_24

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    aget-wide v12, v41, v6

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_24

    .line 363
    move/from16 v0, v34

    int-to-double v10, v0

    aget-wide v12, v43, v6

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    aget-wide v21, v40, v6

    sub-double v19, v19, v21

    mul-double v12, v12, v19

    sub-double/2addr v10, v12

    double-to-float v11, v10

    .line 365
    move-object/from16 v0, p0

    iget-object v10, v0, Lbdz;->c:Lbei;

    invoke-virtual {v10, v9, v6}, Lbei;->a(Ljava/lang/Double;I)Ljava/lang/String;

    move-result-object v21

    .line 366
    move-object/from16 v0, p0

    iget-object v9, v0, Lbdz;->c:Lbei;

    invoke-virtual {v9, v6}, Lbei;->v(I)I

    move-result v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 367
    move-object/from16 v0, p0

    iget-object v9, v0, Lbdz;->c:Lbei;

    invoke-virtual {v9, v6}, Lbei;->x(I)Landroid/graphics/Paint$Align;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 368
    sget-object v9, Lbej;->a:Lbej;

    move-object/from16 v0, v18

    if-ne v0, v9, :cond_28

    .line 369
    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v16

    if-ne v0, v9, :cond_27

    .line 372
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lbdz;->a(Landroid/graphics/Paint$Align;)I

    move-result v9

    sub-int v9, v8, v9

    int-to-float v10, v9

    int-to-float v12, v8

    move-object/from16 v9, p1

    move v13, v11

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 373
    int-to-float v0, v8

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lbdz;->c:Lbei;

    invoke-virtual {v9}, Lbei;->ag()F

    move-result v9

    sub-float v23, v11, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lbdz;->c:Lbei;

    invoke-virtual {v9}, Lbei;->Z()F

    move-result v25

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v24, p6

    invoke-virtual/range {v19 .. v25}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 379
    :goto_14
    if-eqz v15, :cond_24

    .line 380
    move-object/from16 v0, p0

    iget-object v9, v0, Lbdz;->c:Lbei;

    invoke-virtual {v9}, Lbei;->V()I

    move-result v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    int-to-float v10, v8

    move/from16 v0, v35

    int-to-float v12, v0

    move-object/from16 v9, p1

    move v13, v11

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 361
    :cond_24
    :goto_15
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_13

    .line 328
    :cond_25
    sget-object v5, Lbej;->b:Lbej;

    move-object/from16 v0, v18

    if-ne v0, v5, :cond_22

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lbdz;->c:Lbei;

    move-object/from16 v20, v0

    sub-int v24, p4, v35

    sub-int v25, p5, p3

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5}, Lbei;->U()I

    move-result v28

    move-object/from16 v19, p0

    move-object/from16 v21, p1

    move/from16 v22, v35

    move/from16 v23, p3

    move-object/from16 v26, p6

    invoke-virtual/range {v19 .. v28}, Lbdz;->a(Lbef;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lbdz;->c:Lbei;

    move-object/from16 v20, v0

    sub-int v24, v8, p2

    sub-int v25, p5, p3

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5}, Lbei;->U()I

    move-result v28

    move-object/from16 v19, p0

    move-object/from16 v21, p1

    move/from16 v22, p2

    move/from16 v23, p3

    move-object/from16 v26, p6

    invoke-virtual/range {v19 .. v28}, Lbdz;->a(Lbef;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    goto/16 :goto_f

    .line 335
    :cond_26
    const/4 v4, 0x0

    goto/16 :goto_10

    .line 375
    :cond_27
    move/from16 v0, v35

    int-to-float v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lbdz;->a(Landroid/graphics/Paint$Align;)I

    move-result v9

    add-int v9, v9, v35

    int-to-float v12, v9

    move-object/from16 v9, p1

    move v13, v11

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 376
    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v9, 0x4000

    sub-float v23, v11, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lbdz;->c:Lbei;

    invoke-virtual {v9}, Lbei;->Z()F

    move-result v25

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v24, p6

    invoke-virtual/range {v19 .. v25}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto/16 :goto_14

    .line 384
    :cond_28
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lbdz;->a(Landroid/graphics/Paint$Align;)I

    move-result v9

    sub-int v9, v35, v9

    int-to-float v10, v9

    move/from16 v0, v35

    int-to-float v12, v0

    move-object/from16 v9, p1

    move v13, v11

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 385
    add-int/lit8 v9, v35, 0xa

    int-to-float v0, v9

    move/from16 v22, v0

    const/high16 v9, 0x4000

    sub-float v23, v11, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lbdz;->c:Lbei;

    invoke-virtual {v9}, Lbei;->Z()F

    move-result v25

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v24, p6

    invoke-virtual/range {v19 .. v25}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 386
    if-eqz v15, :cond_24

    .line 387
    move-object/from16 v0, p0

    iget-object v9, v0, Lbdz;->c:Lbei;

    invoke-virtual {v9}, Lbei;->V()I

    move-result v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    move/from16 v0, v35

    int-to-float v10, v0

    int-to-float v12, v8

    move-object/from16 v9, p1

    move v13, v11

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_15

    .line 358
    :cond_29
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_12

    .line 396
    :cond_2a
    if-eqz v4, :cond_2d

    .line 397
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->h()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->K()F

    move-result v5

    .line 399
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 400
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 401
    sget-object v4, Lbej;->a:Lbej;

    move-object/from16 v0, v18

    if-ne v0, v4, :cond_2f

    .line 402
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->I()Ljava/lang/String;

    move-result-object v11

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p2

    int-to-float v12, v4

    move/from16 v0, v34

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    invoke-virtual {v6}, Lbei;->i()F

    move-result v6

    const/high16 v9, 0x4080

    mul-float/2addr v6, v9

    const/high16 v9, 0x4040

    div-float/2addr v6, v9

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    invoke-virtual {v6}, Lbei;->ae()F

    move-result v6

    add-float/2addr v4, v6

    add-float v13, v4, v5

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 408
    const/4 v4, 0x0

    :goto_16
    move/from16 v0, v39

    if-ge v4, v0, :cond_2c

    .line 409
    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    invoke-virtual {v6, v4}, Lbei;->y(I)Landroid/graphics/Paint$Align;

    move-result-object v6

    .line 410
    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v6, v9, :cond_2b

    .line 411
    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    invoke-virtual {v6, v4}, Lbei;->f(I)Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p2

    int-to-float v6, v0

    add-float v12, v6, v5

    div-int/lit8 v6, p5, 0x2

    add-int v6, v6, p3

    int-to-float v13, v6

    const/high16 v15, -0x3d4c

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 408
    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 413
    :cond_2b
    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    invoke-virtual {v6, v4}, Lbei;->f(I)Ljava/lang/String;

    move-result-object v11

    add-int v6, p2, p4

    int-to-float v12, v6

    div-int/lit8 v6, p5, 0x2

    add-int v6, v6, p3

    int-to-float v13, v6

    const/high16 v15, -0x3d4c

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_17

    .line 416
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->c()F

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 417
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->a()Ljava/lang/String;

    move-result-object v11

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p2

    int-to-float v12, v4

    move/from16 v0, p3

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lbdz;->c:Lbei;

    invoke-virtual {v5}, Lbei;->c()F

    move-result v5

    add-float v13, v4, v5

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 428
    :cond_2d
    :goto_18
    sget-object v4, Lbej;->a:Lbej;

    move-object/from16 v0, v18

    if-ne v0, v4, :cond_30

    .line 429
    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->ae()F

    move-result v4

    float-to-int v4, v4

    add-int v10, p3, v4

    const/4 v15, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v9, v35

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, v33

    move-object/from16 v14, p6

    invoke-virtual/range {v4 .. v15}, Lbdz;->a(Landroid/graphics/Canvas;Lbef;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    .line 437
    :cond_2e
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->j()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 438
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->g()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 439
    int-to-float v10, v8

    move/from16 v0, v34

    int-to-float v11, v0

    move/from16 v0, v35

    int-to-float v12, v0

    move/from16 v0, v34

    int-to-float v13, v0

    move-object/from16 v9, p1

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 440
    const/4 v5, 0x0

    .line 441
    const/4 v4, 0x0

    move v10, v5

    move v5, v4

    :goto_1a
    move/from16 v0, v39

    if-ge v5, v0, :cond_32

    if-nez v10, :cond_32

    .line 442
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4, v5}, Lbei;->y(I)Landroid/graphics/Paint$Align;

    move-result-object v4

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v4, v6, :cond_31

    const/4 v4, 0x1

    .line 441
    :goto_1b
    add-int/lit8 v5, v5, 0x1

    move v10, v4

    goto :goto_1a

    .line 419
    :cond_2f
    sget-object v4, Lbej;->b:Lbej;

    move-object/from16 v0, v18

    if-ne v0, v4, :cond_2d

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->I()Ljava/lang/String;

    move-result-object v11

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p2

    int-to-float v12, v4

    add-int v4, p3, p5

    int-to-float v4, v4

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    invoke-virtual {v6}, Lbei;->ae()F

    move-result v6

    add-float v13, v4, v6

    const/high16 v15, -0x3d4c

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->J()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v4, v35, 0x14

    int-to-float v12, v4

    div-int/lit8 v4, p5, 0x2

    add-int v4, v4, p3

    int-to-float v13, v4

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 423
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->c()F

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->a()Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p2

    int-to-float v4, v0

    add-float v12, v4, v5

    div-int/lit8 v4, p5, 0x2

    add-int v4, v4, v37

    int-to-float v13, v4

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto/16 :goto_18

    .line 431
    :cond_30
    sget-object v4, Lbej;->b:Lbej;

    move-object/from16 v0, v18

    if-ne v0, v4, :cond_2e

    .line 432
    move/from16 v0, v38

    int-to-float v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lbdz;->a(Landroid/graphics/Canvas;FZ)V

    .line 433
    move-object/from16 v0, p0

    iget-object v6, v0, Lbdz;->c:Lbei;

    move-object/from16 v0, p0

    iget-object v4, v0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->ae()F

    move-result v4

    float-to-int v4, v4

    add-int v10, p3, v4

    const/4 v15, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v9, v35

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, v33

    move-object/from16 v14, p6

    invoke-virtual/range {v4 .. v15}, Lbdz;->a(Landroid/graphics/Canvas;Lbef;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    .line 435
    move/from16 v0, v38

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lbdz;->a(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_19

    .line 442
    :cond_31
    const/4 v4, 0x0

    goto/16 :goto_1b

    .line 444
    :cond_32
    sget-object v4, Lbej;->a:Lbej;

    move-object/from16 v0, v18

    if-ne v0, v4, :cond_34

    .line 445
    int-to-float v5, v8

    move/from16 v0, v37

    int-to-float v6, v0

    int-to-float v7, v8

    move/from16 v0, v34

    int-to-float v8, v0

    move-object/from16 v4, p1

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 446
    if-eqz v10, :cond_33

    .line 447
    move/from16 v0, v35

    int-to-float v5, v0

    move/from16 v0, v37

    int-to-float v6, v0

    move/from16 v0, v35

    int-to-float v7, v0

    move/from16 v0, v34

    int-to-float v8, v0

    move-object/from16 v4, p1

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 453
    :cond_33
    :goto_1c
    if-eqz v36, :cond_a

    .line 454
    move/from16 v0, v38

    int-to-float v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lbdz;->a(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_6

    .line 449
    :cond_34
    sget-object v4, Lbej;->b:Lbej;

    move-object/from16 v0, v18

    if-ne v0, v4, :cond_33

    .line 450
    move/from16 v0, v35

    int-to-float v5, v0

    move/from16 v0, v37

    int-to-float v6, v0

    move/from16 v0, v35

    int-to-float v7, v0

    move/from16 v0, v34

    int-to-float v8, v0

    move-object/from16 v4, p1

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1c

    :cond_35
    move/from16 v24, v8

    goto/16 :goto_11

    :cond_36
    move/from16 v34, v4

    move/from16 v35, v9

    goto/16 :goto_3

    :cond_37
    move/from16 v33, v13

    goto/16 :goto_1
.end method

.method public abstract a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lbeh;FII)V
.end method

.method protected a(Landroid/graphics/Canvas;Lbed;Lbeh;Landroid/graphics/Paint;Ljava/util/List;II)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 566
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 568
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 569
    const/4 v0, 0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 570
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 571
    const/4 v0, 0x2

    if-ne v7, v0, :cond_2

    .line 573
    const/4 v0, 0x2

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v0, 0x0

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p3}, Lbeh;->c()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v0, 0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p3}, Lbeh;->c()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 576
    :cond_0
    invoke-virtual {p3}, Lbeh;->j()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p2, p7}, Lbed;->b(I)D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lbdz;->a(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v0, 0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3}, Lbeh;->f()F

    move-result v1

    sub-float v4, v0, v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 579
    invoke-virtual {p3}, Lbeh;->j()Ljava/text/NumberFormat;

    move-result-object v0

    add-int/lit8 v1, p7, 0x1

    invoke-virtual {p2, v1}, Lbed;->b(I)D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lbdz;->a(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v0, 0x3

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3}, Lbeh;->f()F

    move-result v1

    sub-float v4, v0, v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 583
    const/4 v0, 0x2

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 584
    const/4 v0, 0x3

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 570
    :cond_1
    :goto_1
    add-int/lit8 v0, v7, 0x2

    move v7, v0

    goto/16 :goto_0

    .line 586
    :cond_2
    const/4 v0, 0x2

    if-le v7, v0, :cond_1

    .line 589
    invoke-interface {p5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p3}, Lbeh;->c()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_3

    add-int/lit8 v0, v7, 0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p3}, Lbeh;->c()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 592
    :cond_3
    invoke-virtual {p3}, Lbeh;->j()Ljava/text/NumberFormat;

    move-result-object v0

    div-int/lit8 v1, v7, 0x2

    add-int/2addr v1, p7

    invoke-virtual {p2, v1}, Lbed;->b(I)D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lbdz;->a(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-int/lit8 v0, v7, 0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3}, Lbeh;->f()F

    move-result v1

    sub-float v4, v0, v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 595
    invoke-interface {p5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 596
    add-int/lit8 v0, v7, 0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto/16 :goto_1

    .line 601
    :cond_4
    const/4 v0, 0x0

    move v7, v0

    :goto_2
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 602
    invoke-virtual {p3}, Lbeh;->j()Ljava/text/NumberFormat;

    move-result-object v0

    div-int/lit8 v1, v7, 0x2

    add-int/2addr v1, p7

    invoke-virtual {p2, v1}, Lbed;->b(I)D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lbdz;->a(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-int/lit8 v0, v7, 0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3}, Lbeh;->f()F

    move-result v1

    sub-float v4, v0, v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 601
    add-int/lit8 v0, v7, 0x2

    move v7, v0

    goto :goto_2

    .line 607
    :cond_5
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 622
    iget-object v0, p0, Lbdz;->c:Lbei;

    invoke-virtual {v0}, Lbei;->H()Lbej;

    move-result-object v0

    invoke-virtual {v0}, Lbej;->a()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, p6

    .line 623
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_0

    .line 625
    invoke-virtual {p1, v0, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 627
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 628
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_1

    .line 629
    neg-float v0, v0

    invoke-virtual {p1, v0, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 632
    :cond_1
    return-void
.end method

.method protected a(Lbed;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lbeh;FILbej;I)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 505
    invoke-virtual/range {p5 .. p5}, Lbeh;->g()Lbee;

    move-result-object v9

    .line 506
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v10

    .line 507
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v11

    .line 508
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result v12

    .line 509
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v13

    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v14

    .line 511
    if-eqz v9, :cond_1

    .line 512
    const/4 v6, 0x0

    .line 513
    invoke-virtual {v9}, Lbee;->d()[F

    move-result-object v1

    if-eqz v1, :cond_0

    .line 514
    new-instance v6, Landroid/graphics/DashPathEffect;

    invoke-virtual {v9}, Lbee;->d()[F

    move-result-object v1

    invoke-virtual {v9}, Lbee;->e()F

    move-result v2

    invoke-direct {v6, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 516
    :cond_0
    invoke-virtual {v9}, Lbee;->a()Landroid/graphics/Paint$Cap;

    move-result-object v2

    invoke-virtual {v9}, Lbee;->b()Landroid/graphics/Paint$Join;

    move-result-object v3

    invoke-virtual {v9}, Lbee;->c()F

    move-result v4

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object v1, p0

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lbdz;->a(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    :cond_1
    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    .line 520
    invoke-virtual/range {v1 .. v8}, Lbdz;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lbeh;FII)V

    .line 521
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lbdz;->a(Lbeh;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 522
    invoke-virtual {p0}, Lbdz;->a()Lbdx;

    move-result-object v1

    .line 523
    if-eqz v1, :cond_2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    .line 524
    invoke-virtual/range {v1 .. v8}, Lbdx;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lbeh;FII)V

    .line 528
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lbeh;->d()F

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 529
    sget-object v1, Lbej;->a:Lbej;

    move-object/from16 v0, p8

    if-ne v0, v1, :cond_5

    .line 530
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 534
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lbeh;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 535
    invoke-virtual/range {p5 .. p5}, Lbeh;->e()Landroid/graphics/Paint$Align;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p7

    move/from16 v8, p9

    .line 536
    invoke-virtual/range {v1 .. v8}, Lbdz;->a(Landroid/graphics/Canvas;Lbed;Lbeh;Landroid/graphics/Paint;Ljava/util/List;II)V

    .line 539
    :cond_3
    if-eqz v9, :cond_4

    move-object v1, p0

    move-object v2, v10

    move-object v3, v11

    move v4, v12

    move-object v5, v14

    move-object v6, v13

    move-object/from16 v7, p3

    .line 540
    invoke-direct/range {v1 .. v7}, Lbdz;->a(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .line 542
    :cond_4
    return-void

    .line 532
    :cond_5
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0
.end method

.method protected a(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 670
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 671
    iget-object v1, p0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->k()Z

    move-result v12

    .line 672
    iget-object v1, p0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->m()Z

    move-result v13

    .line 673
    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v11, :cond_2

    .line 674
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 675
    move/from16 v0, p5

    int-to-double v1, v0

    sub-double v3, v7, p10

    mul-double v3, v3, p8

    add-double/2addr v1, v3

    double-to-float v2, v1

    .line 676
    if-eqz v12, :cond_0

    .line 677
    iget-object v1, p0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->ac()I

    move-result v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 678
    move/from16 v0, p7

    int-to-float v3, v0

    move/from16 v0, p7

    int-to-float v1, v0

    iget-object v4, p0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->i()F

    move-result v4

    const/high16 v5, 0x4040

    div-float/2addr v4, v5

    add-float v5, v1, v4

    move-object/from16 v1, p3

    move v4, v2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 679
    iget-object v1, p0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->ah()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {p0, v1, v7, v8}, Lbdz;->a(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p7

    int-to-float v1, v0

    iget-object v3, p0, Lbdz;->c:Lbei;

    invoke-virtual {v3}, Lbei;->i()F

    move-result v3

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    iget-object v3, p0, Lbdz;->c:Lbei;

    invoke-virtual {v3}, Lbei;->ae()F

    move-result v3

    add-float v7, v1, v3

    iget-object v1, p0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->Y()F

    move-result v9

    move-object v3, p0

    move-object/from16 v4, p3

    move v6, v2

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 683
    :cond_0
    if-eqz v13, :cond_1

    .line 684
    iget-object v1, p0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->V()I

    move-result v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 685
    move/from16 v0, p7

    int-to-float v3, v0

    move/from16 v0, p6

    int-to-float v5, v0

    move-object/from16 v1, p3

    move v4, v2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 673
    :cond_1
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_0

    :cond_2
    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v12

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    .line 688
    invoke-virtual/range {v1 .. v14}, Lbdz;->a([Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;ZIIIDDD)V

    .line 690
    return-void
.end method

.method protected a(Ljava/util/Map;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII[D[D)V
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 707
    move-object/from16 v0, p0

    iget-object v1, v0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->H()Lbej;

    move-result-object v14

    .line 708
    move-object/from16 v0, p0

    iget-object v1, v0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->l()Z

    move-result v15

    .line 709
    move-object/from16 v0, p0

    iget-object v1, v0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->k()Z

    move-result v16

    .line 710
    const/4 v1, 0x0

    move v13, v1

    :goto_0
    move/from16 v0, p4

    if-ge v13, v0, :cond_7

    .line 711
    move-object/from16 v0, p0

    iget-object v1, v0, Lbdz;->c:Lbei;

    invoke-virtual {v1, v13}, Lbei;->x(I)Landroid/graphics/Paint$Align;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 712
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/util/List;

    .line 713
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v17

    .line 714
    const/4 v1, 0x0

    move v12, v1

    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_6

    .line 715
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 716
    move-object/from16 v0, p0

    iget-object v1, v0, Lbdz;->c:Lbei;

    invoke-virtual {v1, v13}, Lbei;->y(I)Landroid/graphics/Paint$Align;

    move-result-object v4

    .line 717
    move-object/from16 v0, p0

    iget-object v1, v0, Lbdz;->c:Lbei;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2, v13}, Lbei;->a(Ljava/lang/Double;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 718
    :goto_2
    move/from16 v0, p7

    int-to-double v2, v0

    aget-wide v5, p8, v13

    aget-wide v9, p9, v13

    sub-double v9, v7, v9

    mul-double/2addr v5, v9

    sub-double/2addr v2, v5

    double-to-float v3, v2

    .line 719
    sget-object v2, Lbej;->a:Lbej;

    if-ne v14, v2, :cond_4

    .line 720
    if-eqz v16, :cond_0

    if-nez v1, :cond_0

    .line 721
    move-object/from16 v0, p0

    iget-object v1, v0, Lbdz;->c:Lbei;

    invoke-virtual {v1, v13}, Lbei;->v(I)I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 722
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v4, v1, :cond_3

    .line 723
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lbdz;->a(Landroid/graphics/Paint$Align;)I

    move-result v1

    add-int v1, v1, p5

    int-to-float v2, v1

    move/from16 v0, p5

    int-to-float v4, v0

    move-object/from16 v1, p2

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 724
    move-object/from16 v0, p0

    iget-object v1, v0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->ah()Ljava/text/NumberFormat;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7, v8}, Lbdz;->a(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p5

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lbdz;->c:Lbei;

    invoke-virtual {v2}, Lbei;->af()F

    move-result v2

    sub-float v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->ag()F

    move-result v1

    sub-float v8, v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->Z()F

    move-result v10

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v10}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 736
    :cond_0
    :goto_3
    if-eqz v15, :cond_1

    .line 737
    move-object/from16 v0, p0

    iget-object v1, v0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->V()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 738
    move/from16 v0, p5

    int-to-float v2, v0

    move/from16 v0, p6

    int-to-float v4, v0

    move-object/from16 v1, p2

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 714
    :cond_1
    :goto_4
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto/16 :goto_1

    .line 717
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 729
    :cond_3
    move/from16 v0, p6

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lbdz;->a(Landroid/graphics/Paint$Align;)I

    move-result v1

    add-int v1, v1, p6

    int-to-float v4, v1

    move-object/from16 v1, p2

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v1, v0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->ah()Ljava/text/NumberFormat;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7, v8}, Lbdz;->a(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p6

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lbdz;->c:Lbei;

    invoke-virtual {v2}, Lbei;->af()F

    move-result v2

    add-float v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->ag()F

    move-result v1

    sub-float v8, v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->Z()F

    move-result v10

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v10}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_3

    .line 740
    :cond_4
    sget-object v2, Lbej;->b:Lbej;

    if-ne v14, v2, :cond_1

    .line 741
    if-eqz v16, :cond_5

    if-nez v1, :cond_5

    .line 742
    move-object/from16 v0, p0

    iget-object v1, v0, Lbdz;->c:Lbei;

    invoke-virtual {v1, v13}, Lbei;->v(I)I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 743
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lbdz;->a(Landroid/graphics/Paint$Align;)I

    move-result v1

    sub-int v1, p6, v1

    int-to-float v2, v1

    move/from16 v0, p6

    int-to-float v4, v0

    move-object/from16 v1, p2

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v1, v0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->ah()Ljava/text/NumberFormat;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7, v8}, Lbdz;->a(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v1, p6, 0xa

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lbdz;->c:Lbei;

    invoke-virtual {v2}, Lbei;->af()F

    move-result v2

    add-float v7, v1, v2

    const/high16 v1, 0x4000

    sub-float v8, v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->Z()F

    move-result v10

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v10}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 748
    :cond_5
    if-eqz v15, :cond_1

    .line 749
    move-object/from16 v0, p0

    iget-object v1, v0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->V()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 750
    move/from16 v0, p6

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v4, v0

    move-object/from16 v1, p2

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 710
    :cond_6
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto/16 :goto_0

    .line 755
    :cond_7
    return-void
.end method

.method protected a([Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;ZIIIDDD)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 773
    iget-object v1, p0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->n()Z

    move-result v11

    .line 774
    if-eqz p4, :cond_1

    .line 775
    iget-object v1, p0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->ac()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 776
    array-length v12, p1

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v12, :cond_1

    aget-object v7, p1, v10

    .line 777
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    cmpg-double v1, p10, v1

    if-gtz v1, :cond_0

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    cmpg-double v1, v1, p12

    if-gtz v1, :cond_0

    .line 778
    move/from16 v0, p5

    int-to-double v1, v0

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    sub-double v3, v3, p10

    mul-double v3, v3, p8

    add-double/2addr v1, v3

    double-to-float v2, v1

    .line 779
    iget-object v1, p0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->ac()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 780
    move/from16 v0, p7

    int-to-float v3, v0

    move/from16 v0, p7

    int-to-float v1, v0

    iget-object v4, p0, Lbdz;->c:Lbei;

    invoke-virtual {v4}, Lbei;->i()F

    move-result v4

    const/high16 v5, 0x4040

    div-float/2addr v4, v5

    add-float v5, v1, v4

    move-object v1, p2

    move v4, v2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 782
    iget-object v1, p0, Lbdz;->c:Lbei;

    invoke-virtual {v1, v7}, Lbei;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p7

    int-to-float v1, v0

    iget-object v3, p0, Lbdz;->c:Lbei;

    invoke-virtual {v3}, Lbei;->i()F

    move-result v3

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    add-float v7, v1, v3

    iget-object v1, p0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->Y()F

    move-result v9

    move-object v3, p0

    move-object v4, p2

    move v6, v2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v9}, Lbdz;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 784
    if-eqz v11, :cond_0

    .line 785
    iget-object v1, p0, Lbdz;->c:Lbei;

    invoke-virtual {v1}, Lbei;->V()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 786
    move/from16 v0, p7

    int-to-float v3, v0

    move/from16 v0, p6

    int-to-float v5, v0

    move-object v1, p2

    move v4, v2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 776
    :cond_0
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_0

    .line 791
    :cond_1
    return-void
.end method

.method public a(Lbeh;)Z
    .locals 1
    .parameter

    .prologue
    .line 936
    const/4 v0, 0x0

    return v0
.end method

.method public a(FFI)[D
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 834
    iget-object v0, p0, Lbdz;->c:Lbei;

    invoke-virtual {v0, p3}, Lbei;->g(I)D

    move-result-wide v1

    .line 835
    iget-object v0, p0, Lbdz;->c:Lbei;

    invoke-virtual {v0, p3}, Lbei;->i(I)D

    move-result-wide v3

    .line 836
    iget-object v0, p0, Lbdz;->c:Lbei;

    invoke-virtual {v0, p3}, Lbei;->k(I)D

    move-result-wide v5

    .line 837
    iget-object v0, p0, Lbdz;->c:Lbei;

    invoke-virtual {v0, p3}, Lbei;->m(I)D

    move-result-wide v7

    .line 838
    iget-object v0, p0, Lbdz;->f:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 839
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v9, 0x0

    iget-object v10, p0, Lbdz;->f:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float v10, p1, v10

    float-to-double v10, v10

    sub-double/2addr v3, v1

    mul-double/2addr v3, v10

    iget-object v10, p0, Lbdz;->f:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v3, v10

    add-double/2addr v1, v3

    aput-wide v1, v0, v9

    const/4 v1, 0x1

    iget-object v2, p0, Lbdz;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lbdz;->f:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v2, p2

    float-to-double v2, v2

    sub-double/2addr v7, v5

    mul-double/2addr v2, v7

    iget-object v4, p0, Lbdz;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-double v7, v4

    div-double/2addr v2, v7

    add-double/2addr v2, v5

    aput-wide v2, v0, v1

    .line 844
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    float-to-double v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    float-to-double v2, p2

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method protected abstract a(Ljava/util/List;Ljava/util/List;FII)[Lbds;
.end method

.method protected b()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lbdz;->f:Landroid/graphics/Rect;

    return-object v0
.end method

.method public b(I)[D
    .locals 2
    .parameter

    .prologue
    .line 803
    iget-object v0, p0, Lbdz;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public c()Lbei;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lbdz;->c:Lbei;

    return-object v0
.end method

.method public d()Lbec;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lbdz;->b:Lbec;

    return-object v0
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x0

    return v0
.end method
