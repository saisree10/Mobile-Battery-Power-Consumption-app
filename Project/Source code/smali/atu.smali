.class public Latu;
.super Latl;
.source "UidStatsEntry.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public h:Ljava/util/List;

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:I

.field public t:J

.field public u:J

.field public v:D

.field public w:D


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Latl;-><init>()V

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Latu;->h:Ljava/util/List;

    .line 103
    iput p1, p0, Latu;->a:I

    .line 104
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Latl;->a()V

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Latu;->a:I

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Latu;->b:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Latu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    return-void
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 320
    const v0, 0xa398d3c

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-wide v0, p0, Latu;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 323
    iget-wide v0, p0, Latu;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 324
    iget-wide v0, p0, Latu;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 325
    iget-wide v0, p0, Latu;->l:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 326
    iget-wide v0, p0, Latu;->m:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 327
    iget-wide v0, p0, Latu;->n:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 328
    iget-wide v0, p0, Latu;->o:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 329
    iget-wide v0, p0, Latu;->p:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 330
    iget v0, p0, Latu;->s:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget-wide v0, p0, Latu;->t:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 332
    iget-wide v0, p0, Latu;->u:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 334
    iget-wide v0, p0, Latu;->d:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 335
    iget-wide v0, p0, Latu;->v:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 337
    iget v0, p0, Latu;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-object v0, p0, Latu;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Latu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget-object v0, p0, Latu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    .line 342
    check-cast v0, Latx;

    .line 343
    invoke-static {v0, p1}, Latx;->a(Latx;Landroid/os/Parcel;)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Latu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-object v0, p0, Latu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 350
    :cond_1
    return-void
.end method

.method protected a(Latl;)V
    .locals 4
    .parameter

    .prologue
    .line 144
    invoke-super {p0, p1}, Latl;->a(Latl;)V

    .line 146
    check-cast p1, Latu;

    .line 147
    iget v0, p1, Latu;->a:I

    iput v0, p0, Latu;->a:I

    .line 148
    iget-object v0, p1, Latu;->b:Ljava/lang/String;

    iput-object v0, p0, Latu;->b:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Latu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    iget-object v0, p1, Latu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 152
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 153
    iget-object v2, p0, Latu;->h:Ljava/util/List;

    iget-object v3, p1, Latu;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    iget-wide v0, p1, Latu;->i:J

    iput-wide v0, p0, Latu;->i:J

    .line 157
    iget-wide v0, p1, Latu;->j:J

    iput-wide v0, p0, Latu;->j:J

    .line 158
    iget-wide v0, p1, Latu;->k:J

    iput-wide v0, p0, Latu;->k:J

    .line 159
    iget-wide v0, p1, Latu;->l:J

    iput-wide v0, p0, Latu;->l:J

    .line 160
    iget-wide v0, p1, Latu;->m:J

    iput-wide v0, p0, Latu;->m:J

    .line 161
    iget-wide v0, p1, Latu;->n:J

    iput-wide v0, p0, Latu;->n:J

    .line 162
    iget-wide v0, p1, Latu;->o:J

    iput-wide v0, p0, Latu;->o:J

    .line 163
    iget-wide v0, p1, Latu;->p:J

    iput-wide v0, p0, Latu;->p:J

    .line 164
    iget v0, p1, Latu;->s:I

    iput v0, p0, Latu;->s:I

    .line 165
    iget-wide v0, p1, Latu;->t:J

    iput-wide v0, p0, Latu;->t:J

    .line 166
    iget-wide v0, p1, Latu;->u:J

    iput-wide v0, p0, Latu;->u:J

    .line 168
    iget-wide v0, p1, Latu;->v:D

    iput-wide v0, p0, Latu;->v:D

    .line 169
    iget-wide v0, p1, Latu;->w:D

    iput-wide v0, p0, Latu;->w:D

    .line 170
    return-void
.end method

.method public a(Latu;)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    .line 259
    iget v0, p0, Latu;->a:I

    iget v1, p1, Latu;->a:I

    if-eq v0, v1, :cond_1

    .line 260
    const-string v0, "UidStatsEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not the same app, uid1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Latu;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pkg1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Latu;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Latu;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pkg2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Latu;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_0
    return-void

    .line 266
    :cond_1
    iget-wide v0, p0, Latu;->i:J

    iget-wide v2, p1, Latu;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Latu;->i:J

    .line 267
    iget-wide v0, p0, Latu;->j:J

    iget-wide v2, p1, Latu;->j:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Latu;->j:J

    .line 268
    iget-wide v0, p0, Latu;->k:J

    iget-wide v2, p1, Latu;->k:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Latu;->k:J

    .line 269
    iget-wide v0, p0, Latu;->l:J

    iget-wide v2, p1, Latu;->l:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Latu;->l:J

    .line 270
    iget-wide v0, p0, Latu;->m:J

    iget-wide v2, p1, Latu;->m:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Latu;->m:J

    .line 271
    iget-wide v0, p0, Latu;->n:J

    iget-wide v2, p1, Latu;->n:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Latu;->n:J

    .line 272
    iget-wide v0, p0, Latu;->o:J

    iget-wide v2, p1, Latu;->o:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Latu;->o:J

    .line 273
    iget-wide v0, p0, Latu;->p:J

    iget-wide v2, p1, Latu;->p:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Latu;->p:J

    .line 274
    iget v0, p0, Latu;->s:I

    iget v1, p1, Latu;->s:I

    sub-int/2addr v0, v1

    iput v0, p0, Latu;->s:I

    .line 275
    iget-wide v0, p0, Latu;->t:J

    iget-wide v2, p1, Latu;->t:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Latu;->t:J

    .line 276
    iget-wide v0, p0, Latu;->u:J

    iget-wide v2, p1, Latu;->u:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Latu;->u:J

    .line 278
    iget-wide v0, p0, Latu;->v:D

    iget-wide v2, p1, Latu;->v:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Latu;->v:D

    .line 279
    iget-wide v0, p0, Latu;->v:D

    cmpg-double v0, v0, v7

    if-gez v0, :cond_2

    .line 286
    iput-wide v7, p0, Latu;->v:D

    .line 292
    :cond_2
    iget-object v0, p1, Latu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    .line 293
    check-cast v0, Latx;

    .line 294
    iget-object v1, p0, Latu;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Latl;

    .line 295
    check-cast v1, Latx;

    .line 296
    iget v4, v1, Latx;->a:I

    iget v5, v0, Latx;->a:I

    if-ne v4, v5, :cond_4

    .line 297
    iget-wide v3, v1, Latx;->d:D

    iget-wide v5, v0, Latx;->d:D

    sub-double/2addr v3, v5

    iput-wide v3, v1, Latx;->d:D

    .line 298
    iget-wide v3, v1, Latx;->b:J

    iget-wide v5, v0, Latx;->b:J

    sub-long/2addr v3, v5

    iput-wide v3, v1, Latx;->b:J

    .line 299
    iget-wide v3, v1, Latx;->d:D

    cmpg-double v0, v3, v7

    if-gez v0, :cond_3

    .line 307
    iput-wide v7, v1, Latx;->d:D

    .line 308
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Latx;->b:J

    goto :goto_0
.end method

.method public b(Landroid/os/Parcel;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 354
    const v2, 0xa398d3c

    if-eq v1, v2, :cond_0

    .line 355
    const-string v2, "UidStatsEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data corrupted with magic number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :goto_0
    return v0

    .line 359
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Latu;->i:J

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Latu;->j:J

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Latu;->k:J

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Latu;->l:J

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Latu;->m:J

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Latu;->n:J

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Latu;->o:J

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Latu;->p:J

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Latu;->s:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Latu;->t:J

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Latu;->u:J

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Latu;->d:D

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Latu;->v:D

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Latu;->a:I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Latu;->b:Ljava/lang/String;

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 378
    iget-object v1, p0, Latu;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v0

    .line 382
    :goto_1
    if-ge v1, v2, :cond_1

    .line 386
    iget-object v3, p0, Latu;->g:Ljava/util/ArrayList;

    new-instance v4, Latx;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Latx;-><init>(Landroid/os/Parcel;Latv;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 390
    iget-object v2, p0, Latu;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 394
    :goto_2
    if-ge v0, v1, :cond_2

    .line 398
    iget-object v2, p0, Latu;->h:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 401
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method protected synthetic c()Latl;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Latu;->f()Latu;

    move-result-object v0

    return-object v0
.end method

.method public c(Latl;)V
    .locals 9
    .parameter

    .prologue
    .line 174
    check-cast p1, Latu;

    .line 177
    iget-wide v0, p0, Latu;->d:D

    iget-wide v2, p1, Latu;->d:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Latu;->d:D

    .line 178
    iget-wide v0, p0, Latu;->e:D

    iget-wide v2, p1, Latu;->e:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Latu;->e:D

    .line 181
    iget-wide v0, p0, Latu;->i:J

    iget-wide v2, p1, Latu;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Latu;->i:J

    .line 182
    iget-wide v0, p0, Latu;->j:J

    iget-wide v2, p1, Latu;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Latu;->j:J

    .line 183
    iget-wide v0, p0, Latu;->l:J

    iget-wide v2, p1, Latu;->l:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Latu;->l:J

    .line 184
    iget-wide v0, p0, Latu;->m:J

    iget-wide v2, p1, Latu;->m:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Latu;->m:J

    .line 185
    iget-wide v0, p0, Latu;->n:J

    iget-wide v2, p1, Latu;->n:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Latu;->n:J

    .line 186
    iget-wide v0, p0, Latu;->o:J

    iget-wide v2, p1, Latu;->o:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Latu;->o:J

    .line 187
    iget-wide v0, p0, Latu;->p:J

    iget-wide v2, p1, Latu;->p:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Latu;->p:J

    .line 188
    iget v0, p0, Latu;->s:I

    iget v1, p1, Latu;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Latu;->s:I

    .line 189
    iget-wide v0, p0, Latu;->t:J

    iget-wide v2, p1, Latu;->t:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Latu;->t:J

    .line 190
    iget-wide v0, p0, Latu;->u:J

    iget-wide v2, p1, Latu;->u:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Latu;->u:J

    .line 192
    iget-wide v0, p0, Latu;->v:D

    iget-wide v2, p1, Latu;->v:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Latu;->v:D

    .line 193
    iget-wide v0, p0, Latu;->w:D

    iget-wide v2, p1, Latu;->w:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Latu;->w:D

    .line 196
    iget-object v0, p0, Latu;->h:Ljava/util/List;

    iget-object v1, p1, Latu;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 201
    iget-object v0, p1, Latu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    move-object v1, v0

    .line 202
    check-cast v1, Latx;

    .line 203
    const/4 v3, 0x0

    .line 204
    iget-object v2, p0, Latu;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Latl;

    .line 205
    check-cast v2, Latx;

    .line 206
    iget v6, v2, Latx;->a:I

    iget v7, v1, Latx;->a:I

    if-ne v6, v7, :cond_1

    .line 207
    iget-wide v5, v2, Latx;->d:D

    iget-wide v7, v1, Latx;->d:D

    add-double/2addr v5, v7

    iput-wide v5, v2, Latx;->d:D

    .line 208
    iget-wide v5, v2, Latx;->e:D

    iget-wide v7, v1, Latx;->e:D

    add-double/2addr v5, v7

    iput-wide v5, v2, Latx;->e:D

    .line 209
    iget-wide v5, v2, Latx;->b:J

    iget-wide v7, v1, Latx;->b:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Latx;->b:J

    .line 210
    const/4 v1, 0x1

    .line 214
    :goto_1
    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Latu;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_2
    return-void

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method protected d()V
    .locals 4

    .prologue
    .line 222
    invoke-super {p0}, Latl;->d()V

    .line 223
    iget-wide v0, p0, Latu;->d:D

    iget-wide v2, p0, Latu;->v:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 228
    iget-wide v0, p0, Latu;->v:D

    iput-wide v0, p0, Latu;->d:D

    .line 230
    :cond_0
    return-void
.end method

.method public e()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 107
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 109
    :try_start_0
    const-string v0, "cpuTime"

    iget-wide v2, p0, Latu;->i:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 110
    const-string v0, "fgTime"

    iget-wide v2, p0, Latu;->j:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 111
    const-string v0, "bgTime"

    iget-wide v2, p0, Latu;->k:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 112
    const-string v0, "wakelockTime"

    iget-wide v2, p0, Latu;->m:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 113
    const-string v0, "gpsTime"

    iget-wide v2, p0, Latu;->n:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 114
    const-string v0, "sensorsTime"

    iget-wide v2, p0, Latu;->o:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 115
    const-string v0, "wifiOnTime"

    iget-wide v2, p0, Latu;->p:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 116
    const-string v0, "wifiScanTime"

    iget-wide v2, p0, Latu;->q:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 117
    const-string v0, "wifiFullTime"

    iget-wide v2, p0, Latu;->r:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 118
    const-string v0, "wakeupTime"

    iget v2, p0, Latu;->s:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    const-string v0, "tcpBytesReceived"

    iget-wide v2, p0, Latu;->t:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 120
    const-string v0, "tcpBytesSent"

    iget-wide v2, p0, Latu;->u:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected f()Latu;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Latu;

    iget v1, p0, Latu;->a:I

    invoke-direct {v0, v1}, Latu;-><init>(I)V

    return-object v0
.end method
