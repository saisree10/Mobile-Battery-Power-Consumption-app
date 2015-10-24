.class public Lbdp;
.super Ljava/lang/Object;
.source "TouchHandler.java"

# interfaces
.implements Lbdo;


# instance fields
.field private a:Lbef;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Landroid/graphics/RectF;

.field private g:Lbep;

.field private h:Lber;

.field private i:Lbdm;

.field private j:Landroid/content/Context;

.field private k:F

.field private l:Z


# direct methods
.method public constructor <init>(Lbdm;Lbdr;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lbdp;->f:Landroid/graphics/RectF;

    .line 71
    invoke-virtual {p1}, Lbdm;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbdp;->j:Landroid/content/Context;

    .line 72
    iput-object p1, p0, Lbdp;->i:Lbdm;

    .line 73
    iget-object v0, p0, Lbdp;->i:Lbdm;

    invoke-virtual {v0}, Lbdm;->getZoomRectangle()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lbdp;->f:Landroid/graphics/RectF;

    .line 74
    instance-of v0, p2, Lbdz;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 75
    check-cast v0, Lbdz;

    invoke-virtual {v0}, Lbdz;->c()Lbei;

    move-result-object v0

    iput-object v0, p0, Lbdp;->a:Lbef;

    .line 79
    :goto_0
    iget-object v0, p0, Lbdp;->a:Lbef;

    invoke-virtual {v0}, Lbef;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Lbep;

    invoke-direct {v0, p2}, Lbep;-><init>(Lbdr;)V

    iput-object v0, p0, Lbdp;->g:Lbep;

    .line 82
    :cond_0
    iget-object v0, p0, Lbdp;->a:Lbef;

    invoke-virtual {v0}, Lbef;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Lber;

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    invoke-direct {v0, p2, v1, v2}, Lber;-><init>(Lbdr;ZF)V

    iput-object v0, p0, Lbdp;->h:Lber;

    .line 85
    :cond_1
    return-void

    :cond_2
    move-object v0, p2

    .line 77
    check-cast v0, Lbdw;

    invoke-virtual {v0}, Lbdw;->a()Lbef;

    move-result-object v0

    iput-object v0, p0, Lbdp;->a:Lbef;

    goto :goto_0
.end method

.method private a(FI)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 185
    const v0, 0x3f666666

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 186
    const v1, 0x3f8ccccd

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 187
    float-to-double v1, v0

    const-wide v3, 0x3feccccccccccccdL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    float-to-double v1, v0

    const-wide v3, 0x3ff199999999999aL

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 188
    iget-object v1, p0, Lbdp;->h:Lber;

    invoke-virtual {v1, v0}, Lber;->a(F)V

    .line 189
    iget-object v0, p0, Lbdp;->h:Lber;

    invoke-virtual {v0, p2}, Lber;->b(I)V

    .line 191
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lbdp;->g:Lbep;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lbdp;->g:Lbep;

    invoke-virtual {v0}, Lbep;->a()Z

    move-result v0

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 94
    iget-object v1, p0, Lbdp;->a:Lbef;

    invoke-virtual {v1}, Lbef;->b()Lbeg;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lbdp;->a()Z

    move-result v2

    invoke-interface {v1, p1, v2}, Lbeg;->a(Landroid/view/MotionEvent;Z)Z

    .line 100
    :cond_0
    iget-object v1, p0, Lbdp;->a:Lbef;

    if-eqz v1, :cond_9

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 101
    iget v0, p0, Lbdp;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lbdp;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_f

    .line 102
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_7

    iget v0, p0, Lbdp;->d:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-gez v0, :cond_2

    iget v0, p0, Lbdp;->e:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_7

    :cond_2
    iget-object v0, p0, Lbdp;->a:Lbef;

    invoke-virtual {v0}, Lbef;->x()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 107
    sub-float v0, v1, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 108
    sub-float v5, v2, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 109
    iget v6, p0, Lbdp;->b:F

    iget v7, p0, Lbdp;->d:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 110
    iget v7, p0, Lbdp;->c:F

    iget v8, p0, Lbdp;->e:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 113
    iget v8, p0, Lbdp;->c:F

    sub-float v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lbdp;->b:F

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v8, v9

    .line 114
    iget v9, p0, Lbdp;->e:F

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lbdp;->d:F

    sub-float v10, v3, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    div-float/2addr v9, v10

    .line 115
    float-to-double v10, v8

    const-wide/high16 v12, 0x3fd0

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_4

    float-to-double v10, v9

    const-wide/high16 v12, 0x3fd0

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_4

    .line 118
    div-float/2addr v0, v6

    .line 119
    const/4 v5, 0x1

    invoke-direct {p0, v0, v5}, Lbdp;->a(FI)V

    .line 134
    :goto_0
    iput v3, p0, Lbdp;->d:F

    .line 135
    iput v4, p0, Lbdp;->e:F

    .line 144
    :cond_3
    :goto_1
    iput v1, p0, Lbdp;->b:F

    .line 145
    iput v2, p0, Lbdp;->c:F

    .line 146
    iget-object v0, p0, Lbdp;->i:Lbdm;

    invoke-virtual {v0}, Lbdm;->d()V

    .line 147
    const/4 v0, 0x1

    .line 181
    :goto_2
    return v0

    .line 120
    :cond_4
    float-to-double v10, v8

    const-wide v12, 0x400dd70a3d70a3d7L

    cmpl-double v8, v10, v12

    if-ltz v8, :cond_5

    float-to-double v8, v9

    const-wide v10, 0x400dd70a3d70a3d7L

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_5

    .line 123
    div-float v0, v5, v7

    .line 124
    const/4 v5, 0x2

    invoke-direct {p0, v0, v5}, Lbdp;->a(FI)V

    goto :goto_0

    .line 127
    :cond_5
    iget v8, p0, Lbdp;->b:F

    sub-float v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lbdp;->c:F

    sub-float v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_6

    .line 128
    div-float/2addr v0, v6

    .line 132
    :goto_3
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lbdp;->a(FI)V

    goto :goto_0

    .line 130
    :cond_6
    div-float v0, v5, v7

    goto :goto_3

    .line 136
    :cond_7
    iget-object v0, p0, Lbdp;->a:Lbef;

    invoke-virtual {v0}, Lbef;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    iget v0, p0, Lbdp;->k:F

    sub-float v0, v1, v0

    const/high16 v3, 0x4100

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbdp;->l:Z

    .line 140
    :cond_8
    iget-object v0, p0, Lbdp;->g:Lbep;

    iget v3, p0, Lbdp;->b:F

    iget v4, p0, Lbdp;->c:F

    invoke-virtual {v0, v3, v4, v1, v2}, Lbep;->a(FFFF)V

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lbdp;->d:F

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lbdp;->e:F

    goto :goto_1

    .line 149
    :cond_9
    if-nez v0, :cond_c

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbdp;->l:Z

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lbdp;->b:F

    .line 152
    iget v0, p0, Lbdp;->b:F

    iput v0, p0, Lbdp;->k:F

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lbdp;->c:F

    .line 154
    iget-object v0, p0, Lbdp;->a:Lbef;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lbdp;->a:Lbef;

    invoke-virtual {v0}, Lbef;->x()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lbdp;->f:Landroid/graphics/RectF;

    iget v1, p0, Lbdp;->b:F

    iget v2, p0, Lbdp;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 155
    iget v0, p0, Lbdp;->b:F

    iget-object v1, p0, Lbdp;->f:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lbdp;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x4040

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    .line 156
    iget-object v0, p0, Lbdp;->i:Lbdm;

    invoke-virtual {v0}, Lbdm;->a()V

    .line 162
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 157
    :cond_a
    iget v0, p0, Lbdp;->b:F

    iget-object v1, p0, Lbdp;->f:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lbdp;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    const/high16 v3, 0x4040

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    .line 158
    iget-object v0, p0, Lbdp;->i:Lbdm;

    invoke-virtual {v0}, Lbdm;->b()V

    goto :goto_4

    .line 160
    :cond_b
    iget-object v0, p0, Lbdp;->i:Lbdm;

    invoke-virtual {v0}, Lbdm;->c()V

    goto :goto_4

    .line 164
    :cond_c
    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    .line 165
    :cond_d
    iget-boolean v1, p0, Lbdp;->l:Z

    if-eqz v1, :cond_e

    .line 167
    iget-object v1, p0, Lbdp;->j:Landroid/content/Context;

    const-string v2, "home"

    const-string v3, "slidebc"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 172
    :cond_e
    const/4 v1, 0x0

    iput v1, p0, Lbdp;->b:F

    .line 173
    const/4 v1, 0x0

    iput v1, p0, Lbdp;->c:F

    .line 174
    const/4 v1, 0x0

    iput v1, p0, Lbdp;->d:F

    .line 175
    const/4 v1, 0x0

    iput v1, p0, Lbdp;->e:F

    .line 176
    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    .line 177
    const/high16 v0, -0x4080

    iput v0, p0, Lbdp;->b:F

    .line 178
    const/high16 v0, -0x4080

    iput v0, p0, Lbdp;->c:F

    .line 181
    :cond_f
    iget-object v0, p0, Lbdp;->a:Lbef;

    invoke-virtual {v0}, Lbef;->C()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_2
.end method
