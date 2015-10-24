.class public Laar;
.super Ljava/lang/Object;
.source "OnGoingNotification.java"


# static fields
.field private static volatile m:Laar;


# instance fields
.field private a:Landroid/app/NotificationManager;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private n:I

.field private o:Laff;

.field private final p:[[I

.field private q:Lacx;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v4, p0, Laar;->l:Z

    .line 80
    iput v4, p0, Laar;->n:I

    .line 86
    new-array v0, v8, [[I

    const/16 v1, 0x65

    new-array v1, v1, [I

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020210

    aput v2, v1, v4

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020211

    aput v2, v1, v5

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02021d

    aput v2, v1, v6

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020228

    aput v2, v1, v7

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020233

    aput v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02023e

    aput v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020249

    aput v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020254

    aput v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02025f

    aput v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02026a

    aput v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020212

    aput v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020214

    aput v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020215

    aput v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020216

    aput v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020217

    aput v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020218

    aput v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020219

    aput v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02021a

    aput v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02021b

    aput v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02021c

    aput v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02021e

    aput v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02021f

    aput v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020220

    aput v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020221

    aput v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020222

    aput v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020223

    aput v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020224

    aput v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020225

    aput v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020226

    aput v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020227

    aput v3, v1, v2

    const/16 v2, 0x1e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020229

    aput v3, v1, v2

    const/16 v2, 0x1f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02022a

    aput v3, v1, v2

    const/16 v2, 0x20

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02022b

    aput v3, v1, v2

    const/16 v2, 0x21

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02022c

    aput v3, v1, v2

    const/16 v2, 0x22

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02022d

    aput v3, v1, v2

    const/16 v2, 0x23

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02022e

    aput v3, v1, v2

    const/16 v2, 0x24

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02022f

    aput v3, v1, v2

    const/16 v2, 0x25

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020230

    aput v3, v1, v2

    const/16 v2, 0x26

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020231

    aput v3, v1, v2

    const/16 v2, 0x27

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020232

    aput v3, v1, v2

    const/16 v2, 0x28

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020234

    aput v3, v1, v2

    const/16 v2, 0x29

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020235

    aput v3, v1, v2

    const/16 v2, 0x2a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020236

    aput v3, v1, v2

    const/16 v2, 0x2b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020237

    aput v3, v1, v2

    const/16 v2, 0x2c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020238

    aput v3, v1, v2

    const/16 v2, 0x2d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020239

    aput v3, v1, v2

    const/16 v2, 0x2e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02023a

    aput v3, v1, v2

    const/16 v2, 0x2f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02023b

    aput v3, v1, v2

    const/16 v2, 0x30

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02023c

    aput v3, v1, v2

    const/16 v2, 0x31

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02023d

    aput v3, v1, v2

    const/16 v2, 0x32

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02023f

    aput v3, v1, v2

    const/16 v2, 0x33

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020240

    aput v3, v1, v2

    const/16 v2, 0x34

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020241

    aput v3, v1, v2

    const/16 v2, 0x35

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020242

    aput v3, v1, v2

    const/16 v2, 0x36

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020243

    aput v3, v1, v2

    const/16 v2, 0x37

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020244

    aput v3, v1, v2

    const/16 v2, 0x38

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020245

    aput v3, v1, v2

    const/16 v2, 0x39

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020246

    aput v3, v1, v2

    const/16 v2, 0x3a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020247

    aput v3, v1, v2

    const/16 v2, 0x3b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020248

    aput v3, v1, v2

    const/16 v2, 0x3c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02024a

    aput v3, v1, v2

    const/16 v2, 0x3d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02024b

    aput v3, v1, v2

    const/16 v2, 0x3e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02024c

    aput v3, v1, v2

    const/16 v2, 0x3f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02024d

    aput v3, v1, v2

    const/16 v2, 0x40

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02024e

    aput v3, v1, v2

    const/16 v2, 0x41

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02024f

    aput v3, v1, v2

    const/16 v2, 0x42

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020250

    aput v3, v1, v2

    const/16 v2, 0x43

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020251

    aput v3, v1, v2

    const/16 v2, 0x44

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020252

    aput v3, v1, v2

    const/16 v2, 0x45

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020253

    aput v3, v1, v2

    const/16 v2, 0x46

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020255

    aput v3, v1, v2

    const/16 v2, 0x47

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020256

    aput v3, v1, v2

    const/16 v2, 0x48

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020257

    aput v3, v1, v2

    const/16 v2, 0x49

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020258

    aput v3, v1, v2

    const/16 v2, 0x4a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020259

    aput v3, v1, v2

    const/16 v2, 0x4b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02025a

    aput v3, v1, v2

    const/16 v2, 0x4c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02025b

    aput v3, v1, v2

    const/16 v2, 0x4d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02025c

    aput v3, v1, v2

    const/16 v2, 0x4e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02025d

    aput v3, v1, v2

    const/16 v2, 0x4f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02025e

    aput v3, v1, v2

    const/16 v2, 0x50

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020260

    aput v3, v1, v2

    const/16 v2, 0x51

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020261

    aput v3, v1, v2

    const/16 v2, 0x52

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020262

    aput v3, v1, v2

    const/16 v2, 0x53

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020263

    aput v3, v1, v2

    const/16 v2, 0x54

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020264

    aput v3, v1, v2

    const/16 v2, 0x55

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020265

    aput v3, v1, v2

    const/16 v2, 0x56

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020266

    aput v3, v1, v2

    const/16 v2, 0x57

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020267

    aput v3, v1, v2

    const/16 v2, 0x58

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020268

    aput v3, v1, v2

    const/16 v2, 0x59

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020269

    aput v3, v1, v2

    const/16 v2, 0x5a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02026b

    aput v3, v1, v2

    const/16 v2, 0x5b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02026c

    aput v3, v1, v2

    const/16 v2, 0x5c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02026d

    aput v3, v1, v2

    const/16 v2, 0x5d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02026e

    aput v3, v1, v2

    const/16 v2, 0x5e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02026f

    aput v3, v1, v2

    const/16 v2, 0x5f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020270

    aput v3, v1, v2

    const/16 v2, 0x60

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020271

    aput v3, v1, v2

    const/16 v2, 0x61

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020272

    aput v3, v1, v2

    const/16 v2, 0x62

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020273

    aput v3, v1, v2

    const/16 v2, 0x63

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020274

    aput v3, v1, v2

    const/16 v2, 0x64

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020213

    aput v3, v1, v2

    aput-object v1, v0, v4

    const/16 v1, 0x65

    new-array v1, v1, [I

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020275

    aput v2, v1, v4

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020276

    aput v2, v1, v5

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020282

    aput v2, v1, v6

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02028d

    aput v2, v1, v7

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020298

    aput v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202a3

    aput v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202ae

    aput v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202b9

    aput v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202c4

    aput v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202cf

    aput v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020277

    aput v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020279

    aput v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02027a

    aput v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02027b

    aput v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02027c

    aput v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02027d

    aput v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02027e

    aput v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02027f

    aput v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020280

    aput v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020281

    aput v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020283

    aput v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020284

    aput v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020285

    aput v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020286

    aput v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020287

    aput v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020288

    aput v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020289

    aput v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02028a

    aput v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02028b

    aput v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02028c

    aput v3, v1, v2

    const/16 v2, 0x1e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02028e

    aput v3, v1, v2

    const/16 v2, 0x1f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02028f

    aput v3, v1, v2

    const/16 v2, 0x20

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020290

    aput v3, v1, v2

    const/16 v2, 0x21

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020291

    aput v3, v1, v2

    const/16 v2, 0x22

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020292

    aput v3, v1, v2

    const/16 v2, 0x23

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020293

    aput v3, v1, v2

    const/16 v2, 0x24

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020294

    aput v3, v1, v2

    const/16 v2, 0x25

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020295

    aput v3, v1, v2

    const/16 v2, 0x26

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020296

    aput v3, v1, v2

    const/16 v2, 0x27

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020297

    aput v3, v1, v2

    const/16 v2, 0x28

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020299

    aput v3, v1, v2

    const/16 v2, 0x29

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02029a

    aput v3, v1, v2

    const/16 v2, 0x2a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02029b

    aput v3, v1, v2

    const/16 v2, 0x2b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02029c

    aput v3, v1, v2

    const/16 v2, 0x2c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02029d

    aput v3, v1, v2

    const/16 v2, 0x2d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02029e

    aput v3, v1, v2

    const/16 v2, 0x2e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02029f

    aput v3, v1, v2

    const/16 v2, 0x2f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202a0

    aput v3, v1, v2

    const/16 v2, 0x30

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202a1

    aput v3, v1, v2

    const/16 v2, 0x31

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202a2

    aput v3, v1, v2

    const/16 v2, 0x32

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202a4

    aput v3, v1, v2

    const/16 v2, 0x33

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202a5

    aput v3, v1, v2

    const/16 v2, 0x34

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202a6

    aput v3, v1, v2

    const/16 v2, 0x35

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202a7

    aput v3, v1, v2

    const/16 v2, 0x36

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202a8

    aput v3, v1, v2

    const/16 v2, 0x37

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202a9

    aput v3, v1, v2

    const/16 v2, 0x38

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202aa

    aput v3, v1, v2

    const/16 v2, 0x39

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202ab

    aput v3, v1, v2

    const/16 v2, 0x3a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202ac

    aput v3, v1, v2

    const/16 v2, 0x3b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202ad

    aput v3, v1, v2

    const/16 v2, 0x3c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202af

    aput v3, v1, v2

    const/16 v2, 0x3d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202b0

    aput v3, v1, v2

    const/16 v2, 0x3e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202b1

    aput v3, v1, v2

    const/16 v2, 0x3f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202b2

    aput v3, v1, v2

    const/16 v2, 0x40

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202b3

    aput v3, v1, v2

    const/16 v2, 0x41

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202b4

    aput v3, v1, v2

    const/16 v2, 0x42

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202b5

    aput v3, v1, v2

    const/16 v2, 0x43

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202b6

    aput v3, v1, v2

    const/16 v2, 0x44

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202b7

    aput v3, v1, v2

    const/16 v2, 0x45

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202b8

    aput v3, v1, v2

    const/16 v2, 0x46

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202ba

    aput v3, v1, v2

    const/16 v2, 0x47

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202bb

    aput v3, v1, v2

    const/16 v2, 0x48

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202bc

    aput v3, v1, v2

    const/16 v2, 0x49

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202bd

    aput v3, v1, v2

    const/16 v2, 0x4a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202be

    aput v3, v1, v2

    const/16 v2, 0x4b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202bf

    aput v3, v1, v2

    const/16 v2, 0x4c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202c0

    aput v3, v1, v2

    const/16 v2, 0x4d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202c1

    aput v3, v1, v2

    const/16 v2, 0x4e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202c2

    aput v3, v1, v2

    const/16 v2, 0x4f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202c3

    aput v3, v1, v2

    const/16 v2, 0x50

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202c5

    aput v3, v1, v2

    const/16 v2, 0x51

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202c6

    aput v3, v1, v2

    const/16 v2, 0x52

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202c7

    aput v3, v1, v2

    const/16 v2, 0x53

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202c8

    aput v3, v1, v2

    const/16 v2, 0x54

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202c9

    aput v3, v1, v2

    const/16 v2, 0x55

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202ca

    aput v3, v1, v2

    const/16 v2, 0x56

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202cb

    aput v3, v1, v2

    const/16 v2, 0x57

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202cc

    aput v3, v1, v2

    const/16 v2, 0x58

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202cd

    aput v3, v1, v2

    const/16 v2, 0x59

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202ce

    aput v3, v1, v2

    const/16 v2, 0x5a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202d0

    aput v3, v1, v2

    const/16 v2, 0x5b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202d1

    aput v3, v1, v2

    const/16 v2, 0x5c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202d2

    aput v3, v1, v2

    const/16 v2, 0x5d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202d3

    aput v3, v1, v2

    const/16 v2, 0x5e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202d4

    aput v3, v1, v2

    const/16 v2, 0x5f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202d5

    aput v3, v1, v2

    const/16 v2, 0x60

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202d6

    aput v3, v1, v2

    const/16 v2, 0x61

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202d7

    aput v3, v1, v2

    const/16 v2, 0x62

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202d8

    aput v3, v1, v2

    const/16 v2, 0x63

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202d9

    aput v3, v1, v2

    const/16 v2, 0x64

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020278

    aput v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0x65

    new-array v1, v1, [I

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02032a

    aput v2, v1, v4

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02032b

    aput v2, v1, v5

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020337

    aput v2, v1, v6

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020342

    aput v2, v1, v7

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02034d

    aput v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020358

    aput v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020363

    aput v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02036e

    aput v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020379

    aput v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020384

    aput v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02032c

    aput v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02032e

    aput v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02032f

    aput v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020330

    aput v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020331

    aput v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020332

    aput v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020333

    aput v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020334

    aput v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020335

    aput v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020336

    aput v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020338

    aput v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020339

    aput v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02033a

    aput v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02033b

    aput v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02033c

    aput v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02033d

    aput v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02033e

    aput v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02033f

    aput v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020340

    aput v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020341

    aput v3, v1, v2

    const/16 v2, 0x1e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020343

    aput v3, v1, v2

    const/16 v2, 0x1f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020344

    aput v3, v1, v2

    const/16 v2, 0x20

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020345

    aput v3, v1, v2

    const/16 v2, 0x21

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020346

    aput v3, v1, v2

    const/16 v2, 0x22

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020347

    aput v3, v1, v2

    const/16 v2, 0x23

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020348

    aput v3, v1, v2

    const/16 v2, 0x24

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020349

    aput v3, v1, v2

    const/16 v2, 0x25

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02034a

    aput v3, v1, v2

    const/16 v2, 0x26

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02034b

    aput v3, v1, v2

    const/16 v2, 0x27

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02034c

    aput v3, v1, v2

    const/16 v2, 0x28

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02034e

    aput v3, v1, v2

    const/16 v2, 0x29

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02034f

    aput v3, v1, v2

    const/16 v2, 0x2a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020350

    aput v3, v1, v2

    const/16 v2, 0x2b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020351

    aput v3, v1, v2

    const/16 v2, 0x2c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020352

    aput v3, v1, v2

    const/16 v2, 0x2d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020353

    aput v3, v1, v2

    const/16 v2, 0x2e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020354

    aput v3, v1, v2

    const/16 v2, 0x2f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020355

    aput v3, v1, v2

    const/16 v2, 0x30

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020356

    aput v3, v1, v2

    const/16 v2, 0x31

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020357

    aput v3, v1, v2

    const/16 v2, 0x32

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020359

    aput v3, v1, v2

    const/16 v2, 0x33

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02035a

    aput v3, v1, v2

    const/16 v2, 0x34

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02035b

    aput v3, v1, v2

    const/16 v2, 0x35

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02035c

    aput v3, v1, v2

    const/16 v2, 0x36

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02035d

    aput v3, v1, v2

    const/16 v2, 0x37

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02035e

    aput v3, v1, v2

    const/16 v2, 0x38

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02035f

    aput v3, v1, v2

    const/16 v2, 0x39

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020360

    aput v3, v1, v2

    const/16 v2, 0x3a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020361

    aput v3, v1, v2

    const/16 v2, 0x3b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020362

    aput v3, v1, v2

    const/16 v2, 0x3c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020364

    aput v3, v1, v2

    const/16 v2, 0x3d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020365

    aput v3, v1, v2

    const/16 v2, 0x3e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020366

    aput v3, v1, v2

    const/16 v2, 0x3f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020367

    aput v3, v1, v2

    const/16 v2, 0x40

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020368

    aput v3, v1, v2

    const/16 v2, 0x41

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020369

    aput v3, v1, v2

    const/16 v2, 0x42

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02036a

    aput v3, v1, v2

    const/16 v2, 0x43

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02036b

    aput v3, v1, v2

    const/16 v2, 0x44

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02036c

    aput v3, v1, v2

    const/16 v2, 0x45

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02036d

    aput v3, v1, v2

    const/16 v2, 0x46

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02036f

    aput v3, v1, v2

    const/16 v2, 0x47

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020370

    aput v3, v1, v2

    const/16 v2, 0x48

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020371

    aput v3, v1, v2

    const/16 v2, 0x49

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020372

    aput v3, v1, v2

    const/16 v2, 0x4a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020373

    aput v3, v1, v2

    const/16 v2, 0x4b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020374

    aput v3, v1, v2

    const/16 v2, 0x4c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020375

    aput v3, v1, v2

    const/16 v2, 0x4d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020376

    aput v3, v1, v2

    const/16 v2, 0x4e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020377

    aput v3, v1, v2

    const/16 v2, 0x4f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020378

    aput v3, v1, v2

    const/16 v2, 0x50

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02037a

    aput v3, v1, v2

    const/16 v2, 0x51

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02037b

    aput v3, v1, v2

    const/16 v2, 0x52

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02037c

    aput v3, v1, v2

    const/16 v2, 0x53

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02037d

    aput v3, v1, v2

    const/16 v2, 0x54

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02037e

    aput v3, v1, v2

    const/16 v2, 0x55

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02037f

    aput v3, v1, v2

    const/16 v2, 0x56

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020380

    aput v3, v1, v2

    const/16 v2, 0x57

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020381

    aput v3, v1, v2

    const/16 v2, 0x58

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020382

    aput v3, v1, v2

    const/16 v2, 0x59

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020383

    aput v3, v1, v2

    const/16 v2, 0x5a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020385

    aput v3, v1, v2

    const/16 v2, 0x5b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020386

    aput v3, v1, v2

    const/16 v2, 0x5c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020387

    aput v3, v1, v2

    const/16 v2, 0x5d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020388

    aput v3, v1, v2

    const/16 v2, 0x5e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020389

    aput v3, v1, v2

    const/16 v2, 0x5f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02038a

    aput v3, v1, v2

    const/16 v2, 0x60

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02038b

    aput v3, v1, v2

    const/16 v2, 0x61

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02038c

    aput v3, v1, v2

    const/16 v2, 0x62

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02038d

    aput v3, v1, v2

    const/16 v2, 0x63

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02038e

    aput v3, v1, v2

    const/16 v2, 0x64

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02032d

    aput v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0x65

    new-array v1, v1, [I

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020210

    aput v2, v1, v4

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020211

    aput v2, v1, v5

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02021d

    aput v2, v1, v6

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020228

    aput v2, v1, v7

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020233

    aput v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02023e

    aput v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020249

    aput v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020254

    aput v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02025f

    aput v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02026a

    aput v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020212

    aput v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020214

    aput v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020215

    aput v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020216

    aput v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020217

    aput v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020218

    aput v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020219

    aput v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02021a

    aput v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02021b

    aput v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02021c

    aput v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02021e

    aput v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202db

    aput v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202dc

    aput v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202dd

    aput v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202de

    aput v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202df

    aput v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202e0

    aput v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202e1

    aput v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202e2

    aput v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202e3

    aput v3, v1, v2

    const/16 v2, 0x1e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202e4

    aput v3, v1, v2

    const/16 v2, 0x1f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202e5

    aput v3, v1, v2

    const/16 v2, 0x20

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202e6

    aput v3, v1, v2

    const/16 v2, 0x21

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202e7

    aput v3, v1, v2

    const/16 v2, 0x22

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202e8

    aput v3, v1, v2

    const/16 v2, 0x23

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202e9

    aput v3, v1, v2

    const/16 v2, 0x24

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202ea

    aput v3, v1, v2

    const/16 v2, 0x25

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202eb

    aput v3, v1, v2

    const/16 v2, 0x26

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202ec

    aput v3, v1, v2

    const/16 v2, 0x27

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202ed

    aput v3, v1, v2

    const/16 v2, 0x28

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202ee

    aput v3, v1, v2

    const/16 v2, 0x29

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202ef

    aput v3, v1, v2

    const/16 v2, 0x2a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202f0

    aput v3, v1, v2

    const/16 v2, 0x2b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202f1

    aput v3, v1, v2

    const/16 v2, 0x2c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202f2

    aput v3, v1, v2

    const/16 v2, 0x2d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202f3

    aput v3, v1, v2

    const/16 v2, 0x2e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202f4

    aput v3, v1, v2

    const/16 v2, 0x2f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202f5

    aput v3, v1, v2

    const/16 v2, 0x30

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202f6

    aput v3, v1, v2

    const/16 v2, 0x31

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202f7

    aput v3, v1, v2

    const/16 v2, 0x32

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202f8

    aput v3, v1, v2

    const/16 v2, 0x33

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202f9

    aput v3, v1, v2

    const/16 v2, 0x34

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202fa

    aput v3, v1, v2

    const/16 v2, 0x35

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202fb

    aput v3, v1, v2

    const/16 v2, 0x36

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202fc

    aput v3, v1, v2

    const/16 v2, 0x37

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202fd

    aput v3, v1, v2

    const/16 v2, 0x38

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202fe

    aput v3, v1, v2

    const/16 v2, 0x39

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202ff

    aput v3, v1, v2

    const/16 v2, 0x3a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020300

    aput v3, v1, v2

    const/16 v2, 0x3b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020301

    aput v3, v1, v2

    const/16 v2, 0x3c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020302

    aput v3, v1, v2

    const/16 v2, 0x3d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020303

    aput v3, v1, v2

    const/16 v2, 0x3e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020304

    aput v3, v1, v2

    const/16 v2, 0x3f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020305

    aput v3, v1, v2

    const/16 v2, 0x40

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020306

    aput v3, v1, v2

    const/16 v2, 0x41

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020307

    aput v3, v1, v2

    const/16 v2, 0x42

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020308

    aput v3, v1, v2

    const/16 v2, 0x43

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020309

    aput v3, v1, v2

    const/16 v2, 0x44

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02030a

    aput v3, v1, v2

    const/16 v2, 0x45

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02030b

    aput v3, v1, v2

    const/16 v2, 0x46

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02030c

    aput v3, v1, v2

    const/16 v2, 0x47

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02030d

    aput v3, v1, v2

    const/16 v2, 0x48

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02030e

    aput v3, v1, v2

    const/16 v2, 0x49

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02030f

    aput v3, v1, v2

    const/16 v2, 0x4a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020310

    aput v3, v1, v2

    const/16 v2, 0x4b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020311

    aput v3, v1, v2

    const/16 v2, 0x4c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020312

    aput v3, v1, v2

    const/16 v2, 0x4d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020313

    aput v3, v1, v2

    const/16 v2, 0x4e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020314

    aput v3, v1, v2

    const/16 v2, 0x4f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020315

    aput v3, v1, v2

    const/16 v2, 0x50

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020316

    aput v3, v1, v2

    const/16 v2, 0x51

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020317

    aput v3, v1, v2

    const/16 v2, 0x52

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020318

    aput v3, v1, v2

    const/16 v2, 0x53

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020319

    aput v3, v1, v2

    const/16 v2, 0x54

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02031a

    aput v3, v1, v2

    const/16 v2, 0x55

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02031b

    aput v3, v1, v2

    const/16 v2, 0x56

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02031c

    aput v3, v1, v2

    const/16 v2, 0x57

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02031d

    aput v3, v1, v2

    const/16 v2, 0x58

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02031e

    aput v3, v1, v2

    const/16 v2, 0x59

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02031f

    aput v3, v1, v2

    const/16 v2, 0x5a

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020320

    aput v3, v1, v2

    const/16 v2, 0x5b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020321

    aput v3, v1, v2

    const/16 v2, 0x5c

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020322

    aput v3, v1, v2

    const/16 v2, 0x5d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020323

    aput v3, v1, v2

    const/16 v2, 0x5e

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020324

    aput v3, v1, v2

    const/16 v2, 0x5f

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020325

    aput v3, v1, v2

    const/16 v2, 0x60

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020326

    aput v3, v1, v2

    const/16 v2, 0x61

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020327

    aput v3, v1, v2

    const/16 v2, 0x62

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020328

    aput v3, v1, v2

    const/16 v2, 0x63

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020329

    aput v3, v1, v2

    const/16 v2, 0x64

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0202da

    aput v3, v1, v2

    aput-object v1, v0, v7

    iput-object v0, p0, Laar;->p:[[I

    .line 341
    iput-object p1, p0, Laar;->b:Landroid/content/Context;

    .line 342
    iget-object v0, p0, Laar;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Laar;->a:Landroid/app/NotificationManager;

    .line 344
    invoke-static {p1}, Laff;->a(Landroid/content/Context;)Laff;

    move-result-object v0

    iput-object v0, p0, Laar;->o:Laff;

    .line 345
    iget-object v0, p0, Laar;->b:Landroid/content/Context;

    invoke-static {v0}, Lacx;->a(Landroid/content/Context;)Lacx;

    move-result-object v0

    iput-object v0, p0, Laar;->q:Lacx;

    .line 346
    iget-object v0, p0, Laar;->b:Landroid/content/Context;

    invoke-static {v0}, Lzc;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Laar;->l:Z

    .line 347
    return-void
.end method

.method public static a(Landroid/content/Context;)Laar;
    .locals 3
    .parameter

    .prologue
    .line 331
    sget-object v0, Laar;->m:Laar;

    if-nez v0, :cond_1

    .line 332
    const-class v1, Laar;

    monitor-enter v1

    .line 333
    :try_start_0
    sget-object v0, Laar;->m:Laar;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Laar;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Laar;-><init>(Landroid/content/Context;)V

    sput-object v0, Laar;->m:Laar;

    .line 335
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :cond_1
    sget-object v0, Laar;->m:Laar;

    return-object v0

    .line 335
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 504
    invoke-direct {p0}, Laar;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Laar;->b:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a005a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 513
    :goto_0
    iget v1, p0, Laar;->e:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laar;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lazq;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    :goto_1
    return-object v0

    .line 509
    :cond_0
    iget-object v0, p0, Laar;->b:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0059

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 517
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laar;->b:Landroid/content/Context;

    iget v2, p0, Laar;->e:I

    invoke-static {v1, v2}, Lazq;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Laar;->o:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    .line 496
    iget-object v1, p0, Laar;->o:Laff;

    invoke-virtual {v1}, Laff;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    const/16 v1, 0x67

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Laar;->k:Z

    .line 491
    iget-object v0, p0, Laar;->a:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 492
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput p1, p0, Laar;->n:I

    .line 363
    return-void
.end method

.method public a(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Laar;->k:Z

    .line 369
    iput p1, p0, Laar;->c:I

    .line 370
    iput p2, p0, Laar;->d:I

    .line 371
    iput p3, p0, Laar;->e:I

    .line 372
    iput-object p5, p0, Laar;->f:Ljava/lang/String;

    .line 373
    iput p6, p0, Laar;->g:I

    .line 375
    iget-object v0, p0, Laar;->q:Lacx;

    invoke-virtual {v0, p2}, Lacx;->a(I)V

    .line 376
    iget-object v0, p0, Laar;->b:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a004b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    new-instance v1, Landroid/widget/RemoteViews;

    const-string v2, "com.dianxinos.dxbs"

    sget-object v3, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v3, 0x7f030087

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 379
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Laar;->b:Landroid/content/Context;

    const-class v5, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 381
    const/high16 v3, 0x1020

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 383
    iget-boolean v3, p0, Laar;->l:Z

    if-eqz v3, :cond_3

    .line 384
    sget-object v3, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v3, 0x7f070220

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 385
    const-string v3, "From"

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    :goto_0
    sget-object v3, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v3, 0x7f070223

    invoke-direct {p0, p1, p2}, Laar;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 392
    sget-object v3, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v3, 0x7f070018

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 393
    sget-boolean v0, Lazf;->h:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lazf;->i:Z

    if-eqz v0, :cond_1

    .line 394
    :cond_0
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070014

    iget-object v3, p0, Laar;->p:[[I

    iget v4, p0, Laar;->n:I

    aget-object v3, v3, v4

    iget v4, p0, Laar;->d:I

    aget v3, v3, v4

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 397
    :cond_1
    sget-boolean v0, Lazw;->i:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Laar;->b:Landroid/content/Context;

    invoke-static {v0}, Lazf;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 398
    :goto_1
    if-nez v0, :cond_5

    .line 399
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070146

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 400
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07019b

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 401
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070149

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 436
    :cond_2
    :goto_2
    iget-boolean v0, p0, Laar;->i:Z

    if-eqz v0, :cond_9

    .line 437
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070148

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02042c

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 444
    :goto_3
    const/16 v0, 0x14

    if-gt p2, v0, :cond_a

    .line 445
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070224

    iget-object v3, p0, Laar;->b:Landroid/content/Context;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a01fe

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 451
    :goto_4
    iget-object v0, p0, Laar;->b:Landroid/content/Context;

    invoke-static {v0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v0

    invoke-virtual {v0, p6}, Lacz;->c(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 452
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070225

    const/4 v3, 0x4

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 465
    :goto_5
    iget-object v0, p0, Laar;->b:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 468
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 469
    iget-object v3, p0, Laar;->p:[[I

    iget v4, p0, Laar;->n:I

    aget-object v3, v3, v4

    aget v3, v3, p2

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 470
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 471
    const/4 v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 472
    const/4 v3, 0x0

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 473
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 474
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/Notification;->vibrate:[J

    .line 475
    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 476
    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 477
    const/4 v0, 0x0

    iput-object v0, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 480
    :try_start_0
    iget-object v0, p0, Laar;->a:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 487
    :goto_6
    return-void

    .line 387
    :cond_3
    sget-object v3, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v3, 0x7f070220

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 388
    const-string v3, "From"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 397
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 404
    :cond_5
    iget-boolean v0, p0, Laar;->h:Z

    if-nez v0, :cond_6

    .line 405
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070146

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020429

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 406
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07019b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020425

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 415
    :goto_7
    sget-boolean v0, Lazw;->h:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lazf;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 416
    iget-boolean v0, p0, Laar;->j:Z

    if-eqz v0, :cond_7

    .line 417
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070149

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020427

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 426
    :goto_8
    invoke-static {}, Lazf;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Laar;->h:Z

    if-eqz v0, :cond_2

    .line 427
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070149

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020426

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 410
    :cond_6
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070146

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020428

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 411
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07019b

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020424

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_7

    .line 421
    :cond_7
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070149

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020426

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_8

    .line 432
    :cond_8
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070149

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 440
    :cond_9
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070148

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02042b

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 448
    :cond_a
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070224

    iget-object v3, p0, Laar;->b:Landroid/content/Context;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a01fd

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 453
    :cond_b
    const/16 v0, 0x1c2

    if-lt p6, v0, :cond_c

    .line 454
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070225

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 455
    iget-object v0, p0, Laar;->b:Landroid/content/Context;

    invoke-static {v0, p6}, Lbao;->a(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    .line 456
    sget-object v3, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v3, 0x7f070226

    iget-object v4, p0, Laar;->b:Landroid/content/Context;

    sget-object v5, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v5, 0x7f0a0374

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v0, v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v0, v0, v8

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 459
    :cond_c
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070225

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 460
    iget-object v0, p0, Laar;->b:Landroid/content/Context;

    invoke-static {v0, p6}, Lbao;->a(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    .line 461
    sget-object v3, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v3, 0x7f070226

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 481
    :catch_0
    move-exception v0

    .line 483
    const-string v1, "OnGoingNotification"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 484
    :catch_1
    move-exception v0

    .line 485
    const-string v1, "OnGoingNotification"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 532
    iput-boolean p1, p0, Laar;->l:Z

    .line 533
    iget-object v0, p0, Laar;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lzc;->a(Landroid/content/Context;Z)V

    .line 534
    invoke-virtual {p0}, Laar;->b()V

    .line 535
    return-void
.end method

.method public a(ZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    iput-boolean p1, p0, Laar;->h:Z

    .line 351
    iput-boolean p2, p0, Laar;->i:Z

    .line 352
    iput-boolean p3, p0, Laar;->j:Z

    .line 353
    return-void
.end method

.method public b()V
    .locals 7

    .prologue
    .line 525
    iget-boolean v0, p0, Laar;->k:Z

    if-nez v0, :cond_0

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Laar;->b:Landroid/content/Context;

    invoke-static {v0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    invoke-virtual {v0}, Lamp;->e()Ljava/lang/String;

    move-result-object v4

    .line 528
    iget v1, p0, Laar;->c:I

    iget v2, p0, Laar;->d:I

    iget v3, p0, Laar;->e:I

    iget-object v5, p0, Laar;->f:Ljava/lang/String;

    iget v6, p0, Laar;->g:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Laar;->a(IIILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
