.class public Lbef;
.super Ljava/lang/Object;
.source "DefaultRenderer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final c:Landroid/graphics/Typeface;


# instance fields
.field private A:Z

.field private B:F

.field private C:Z

.field private D:F

.field private E:Z

.field private F:I

.field private G:Z

.field private H:F

.field private I:Lbeg;

.field private a:Ljava/lang/String;

.field private b:F

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/graphics/Typeface;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Z

.field private l:I

.field private m:F

.field private n:Z

.field private o:F

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljava/util/List;

.field private u:Z

.field private v:I

.field private w:[I

.field private x:F

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lbef;->c:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const v3, -0x333334

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lbef;->a:Ljava/lang/String;

    .line 35
    const/high16 v0, 0x4170

    iput v0, p0, Lbef;->b:F

    .line 46
    sget-object v0, Lbef;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbef;->d:Ljava/lang/String;

    .line 48
    iput v1, p0, Lbef;->e:I

    .line 56
    iput-boolean v2, p0, Lbef;->i:Z

    .line 58
    iput v3, p0, Lbef;->j:I

    .line 60
    iput-boolean v2, p0, Lbef;->k:Z

    .line 62
    iput v3, p0, Lbef;->l:I

    .line 64
    const/high16 v0, 0x4120

    iput v0, p0, Lbef;->m:F

    .line 66
    iput-boolean v2, p0, Lbef;->n:Z

    .line 68
    const/high16 v0, 0x4140

    iput v0, p0, Lbef;->o:F

    .line 70
    iput-boolean v1, p0, Lbef;->p:Z

    .line 72
    iput-boolean v1, p0, Lbef;->q:Z

    .line 74
    iput-boolean v1, p0, Lbef;->r:Z

    .line 76
    iput-boolean v1, p0, Lbef;->s:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbef;->t:Ljava/util/List;

    .line 80
    iput-boolean v2, p0, Lbef;->u:Z

    .line 82
    iput v1, p0, Lbef;->v:I

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lbef;->w:[I

    .line 86
    const/high16 v0, 0x3f80

    iput v0, p0, Lbef;->x:F

    .line 88
    iput-boolean v2, p0, Lbef;->y:Z

    .line 90
    iput-boolean v2, p0, Lbef;->z:Z

    .line 92
    iput-boolean v1, p0, Lbef;->A:Z

    .line 94
    const/high16 v0, 0x3fc0

    iput v0, p0, Lbef;->B:F

    .line 96
    iput-boolean v1, p0, Lbef;->C:Z

    .line 98
    iget v0, p0, Lbef;->x:F

    iput v0, p0, Lbef;->D:F

    .line 100
    iput-boolean v1, p0, Lbef;->E:Z

    .line 102
    const/16 v0, 0xf

    iput v0, p0, Lbef;->F:I

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lbef;->H:F

    .line 116
    return-void

    .line 84
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public A()F
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lbef;->B:F

    return v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 631
    iget-boolean v0, p0, Lbef;->y:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lbef;->E:Z

    return v0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 676
    iget v0, p0, Lbef;->F:I

    return v0
.end method

.method public E()I
    .locals 1

    .prologue
    .line 694
    iget v0, p0, Lbef;->v:I

    return v0
.end method

.method public F()[I
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lbef;->w:[I

    return-object v0
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lbef;->G:Z

    return v0
.end method

.method public a(I)Lbeh;
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lbef;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbeh;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lbef;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(F)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput p1, p0, Lbef;->m:F

    .line 313
    return-void
.end method

.method public a(Lbeg;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lbef;->I:Lbeg;

    .line 134
    return-void
.end method

.method public a(Lbeh;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lbef;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-boolean p1, p0, Lbef;->h:Z

    .line 259
    return-void
.end method

.method public a([I)V
    .locals 0
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lbef;->w:[I

    .line 724
    return-void
.end method

.method public b()Lbeg;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lbef;->I:Lbeg;

    return-object v0
.end method

.method public b(F)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput p1, p0, Lbef;->x:F

    .line 560
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput p1, p0, Lbef;->g:I

    .line 241
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-boolean p1, p0, Lbef;->n:Z

    .line 431
    return-void
.end method

.method public c()F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lbef;->b:F

    return v0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput p1, p0, Lbef;->j:I

    .line 277
    return-void
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-boolean p1, p0, Lbef;->u:Z

    .line 532
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lbef;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 595
    iput-boolean p1, p0, Lbef;->A:Z

    .line 596
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lbef;->g:I

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lbef;->h:Z

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lbef;->j:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lbef;->l:I

    return v0
.end method

.method public i()F
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lbef;->m:F

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lbef;->i:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lbef;->k:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lbef;->q:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lbef;->r:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lbef;->s:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lbef;->n:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lbef;->p:Z

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lbef;->d:Ljava/lang/String;

    return-object v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lbef;->e:I

    return v0
.end method

.method public s()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lbef;->f:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public t()F
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lbef;->o:F

    return v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lbef;->u:Z

    return v0
.end method

.method public v()F
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lbef;->x:F

    return v0
.end method

.method public w()F
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lbef;->D:F

    return v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lbef;->z:Z

    return v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Lbef;->A:Z

    return v0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Lbef;->C:Z

    return v0
.end method
