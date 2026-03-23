.class final Le/h$a;
.super Lc/ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Ljava/io/IOException;

.field private final b:Lc/ad;


# direct methods
.method constructor <init>(Lc/ad;)V
    .locals 0

    .line 263
    invoke-direct {p0}, Lc/ad;-><init>()V

    .line 264
    iput-object p1, p0, Le/h$a;->b:Lc/ad;

    return-void
.end method


# virtual methods
.method public a()Lc/v;
    .locals 1

    .line 268
    iget-object v0, p0, Le/h$a;->b:Lc/ad;

    invoke-virtual {v0}, Lc/ad;->a()Lc/v;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 272
    iget-object v0, p0, Le/h$a;->b:Lc/ad;

    invoke-virtual {v0}, Lc/ad;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .locals 1

    .line 289
    iget-object v0, p0, Le/h$a;->b:Lc/ad;

    invoke-virtual {v0}, Lc/ad;->close()V

    return-void
.end method

.method public d()Ld/e;
    .locals 2

    .line 276
    new-instance v0, Le/h$a$1;

    iget-object v1, p0, Le/h$a;->b:Lc/ad;

    invoke-virtual {v1}, Lc/ad;->d()Ld/e;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Le/h$a$1;-><init>(Le/h$a;Ld/s;)V

    invoke-static {v0}, Ld/l;->a(Ld/s;)Ld/e;

    move-result-object v0

    return-object v0
.end method

.method h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Le/h$a;->a:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    throw v0
.end method
