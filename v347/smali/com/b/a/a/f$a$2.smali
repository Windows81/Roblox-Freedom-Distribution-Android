.class Lcom/b/a/a/f$a$2;
.super Lcom/b/a/a/g/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/f$a;


# direct methods
.method constructor <init>(Lcom/b/a/a/f$a;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/b/a/a/f$a$2;->a:Lcom/b/a/a/f$a;

    invoke-direct {p0}, Lcom/b/a/a/g/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/a/g/b;)V
    .locals 4

    .prologue
    .line 344
    sget-object v0, Lcom/b/a/a/f$1;->a:[I

    iget-object v1, p1, Lcom/b/a/a/g/b;->a:Lcom/b/a/a/g/i;

    invoke-virtual {v1}, Lcom/b/a/a/g/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 354
    :goto_0
    return-void

    .line 346
    :pswitch_0
    iget-object v0, p0, Lcom/b/a/a/f$a$2;->a:Lcom/b/a/a/f$a;

    check-cast p1, Lcom/b/a/a/g/a/i;

    invoke-static {v0, p1}, Lcom/b/a/a/f$a;->a(Lcom/b/a/a/f$a;Lcom/b/a/a/g/a/i;)V

    .line 347
    iget-object v0, p0, Lcom/b/a/a/f$a$2;->a:Lcom/b/a/a/f$a;

    iget-object v1, p0, Lcom/b/a/a/f$a$2;->a:Lcom/b/a/a/f$a;

    iget-object v1, v1, Lcom/b/a/a/f$a;->d:Lcom/b/a/a/k/b;

    invoke-interface {v1}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/b/a/a/f$a;->f:J

    .line 348
    iget-object v0, p0, Lcom/b/a/a/f$a$2;->a:Lcom/b/a/a/f$a;

    invoke-static {v0}, Lcom/b/a/a/f$a;->a(Lcom/b/a/a/f$a;)V

    goto :goto_0

    .line 351
    :pswitch_1
    iget-object v0, p0, Lcom/b/a/a/f$a$2;->a:Lcom/b/a/a/f$a;

    check-cast p1, Lcom/b/a/a/g/a/e;

    invoke-static {v0, p1}, Lcom/b/a/a/f$a;->a(Lcom/b/a/a/f$a;Lcom/b/a/a/g/a/e;)V

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 4

    .prologue
    .line 358
    const-string v0, "consumer manager on idle"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    iget-object v0, p0, Lcom/b/a/a/f$a$2;->a:Lcom/b/a/a/f$a;

    iget-object v0, v0, Lcom/b/a/a/f$a;->c:Lcom/b/a/a/g/c;

    const-class v1, Lcom/b/a/a/g/a/g;

    invoke-virtual {v0, v1}, Lcom/b/a/a/g/c;->a(Ljava/lang/Class;)Lcom/b/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/g/a/g;

    .line 360
    iget-object v1, p0, Lcom/b/a/a/f$a$2;->a:Lcom/b/a/a/f$a;

    invoke-virtual {v0, v1}, Lcom/b/a/a/g/a/g;->a(Ljava/lang/Object;)V

    .line 361
    iget-object v1, p0, Lcom/b/a/a/f$a$2;->a:Lcom/b/a/a/f$a;

    iget-wide v2, v1, Lcom/b/a/a/f$a;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/b/a/a/g/a/g;->a(J)V

    .line 362
    iget-object v1, p0, Lcom/b/a/a/f$a$2;->a:Lcom/b/a/a/f$a;

    iget-object v1, v1, Lcom/b/a/a/f$a;->b:Lcom/b/a/a/g/e;

    invoke-interface {v1, v0}, Lcom/b/a/a/g/e;->a(Lcom/b/a/a/g/b;)V

    .line 363
    return-void
.end method
