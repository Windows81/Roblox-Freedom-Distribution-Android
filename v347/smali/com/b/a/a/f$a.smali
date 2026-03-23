.class Lcom/b/a/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final g:Lcom/b/a/a/g/d;


# instance fields
.field final a:Lcom/b/a/a/g/h;

.field final b:Lcom/b/a/a/g/e;

.field final c:Lcom/b/a/a/g/c;

.field final d:Lcom/b/a/a/k/b;

.field e:Z

.field f:J

.field final h:Lcom/b/a/a/g/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 332
    new-instance v0, Lcom/b/a/a/f$a$1;

    invoke-direct {v0}, Lcom/b/a/a/f$a$1;-><init>()V

    sput-object v0, Lcom/b/a/a/f$a;->g:Lcom/b/a/a/g/d;

    return-void
.end method

.method public constructor <init>(Lcom/b/a/a/g/e;Lcom/b/a/a/g/h;Lcom/b/a/a/g/c;Lcom/b/a/a/k/b;)V
    .locals 2

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Lcom/b/a/a/f$a$2;

    invoke-direct {v0, p0}, Lcom/b/a/a/f$a$2;-><init>(Lcom/b/a/a/f$a;)V

    iput-object v0, p0, Lcom/b/a/a/f$a;->h:Lcom/b/a/a/g/f;

    .line 372
    iput-object p2, p0, Lcom/b/a/a/f$a;->a:Lcom/b/a/a/g/h;

    .line 373
    iput-object p3, p0, Lcom/b/a/a/f$a;->c:Lcom/b/a/a/g/c;

    .line 374
    iput-object p1, p0, Lcom/b/a/a/f$a;->b:Lcom/b/a/a/g/e;

    .line 375
    iput-object p4, p0, Lcom/b/a/a/f$a;->d:Lcom/b/a/a/k/b;

    .line 376
    invoke-interface {p4}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/f$a;->f:J

    .line 377
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/b/a/a/f$a;->a:Lcom/b/a/a/g/h;

    sget-object v1, Lcom/b/a/a/f$a;->g:Lcom/b/a/a/g/d;

    invoke-virtual {v0, v1}, Lcom/b/a/a/g/h;->a(Lcom/b/a/a/g/d;)V

    .line 368
    return-void
.end method

.method static synthetic a(Lcom/b/a/a/f$a;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/b/a/a/f$a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/f$a;Lcom/b/a/a/g/a/e;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/b/a/a/f$a;->a(Lcom/b/a/a/g/a/e;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/f$a;Lcom/b/a/a/g/a/i;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/b/a/a/f$a;->a(Lcom/b/a/a/g/a/i;)V

    return-void
.end method

.method private a(Lcom/b/a/a/g/a/e;)V
    .locals 2

    .prologue
    .line 385
    invoke-virtual {p1}, Lcom/b/a/a/g/a/e;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 394
    :goto_0
    return-void

    .line 387
    :pswitch_0
    iget-object v0, p0, Lcom/b/a/a/f$a;->a:Lcom/b/a/a/g/h;

    invoke-virtual {v0}, Lcom/b/a/a/g/h;->a()V

    goto :goto_0

    .line 391
    :pswitch_1
    const-string v0, "Consumer has been poked."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/b/a/a/g/a/i;)V
    .locals 4

    .prologue
    .line 397
    const-string v0, "running job %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/b/a/a/g/a/i;->c()Lcom/b/a/a/j;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    invoke-virtual {p1}, Lcom/b/a/a/g/a/i;->c()Lcom/b/a/a/j;

    move-result-object v1

    .line 399
    invoke-virtual {v1}, Lcom/b/a/a/j;->f()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/b/a/a/j;->a(I)I

    move-result v2

    .line 400
    iget-object v0, p0, Lcom/b/a/a/f$a;->c:Lcom/b/a/a/g/c;

    const-class v3, Lcom/b/a/a/g/a/j;

    invoke-virtual {v0, v3}, Lcom/b/a/a/g/c;->a(Ljava/lang/Class;)Lcom/b/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/g/a/j;

    .line 401
    invoke-virtual {v0, v1}, Lcom/b/a/a/g/a/j;->a(Lcom/b/a/a/j;)V

    .line 402
    invoke-virtual {v0, v2}, Lcom/b/a/a/g/a/j;->a(I)V

    .line 403
    invoke-virtual {v0, p0}, Lcom/b/a/a/g/a/j;->a(Ljava/lang/Object;)V

    .line 404
    iget-object v1, p0, Lcom/b/a/a/f$a;->b:Lcom/b/a/a/g/e;

    invoke-interface {v1, v0}, Lcom/b/a/a/g/e;->a(Lcom/b/a/a/g/b;)V

    .line 405
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/b/a/a/f$a;->a:Lcom/b/a/a/g/h;

    iget-object v1, p0, Lcom/b/a/a/f$a;->h:Lcom/b/a/a/g/f;

    invoke-virtual {v0, v1}, Lcom/b/a/a/g/h;->a(Lcom/b/a/a/g/f;)V

    .line 382
    return-void
.end method
