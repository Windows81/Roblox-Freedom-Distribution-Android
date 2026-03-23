.class Lc/a/d/d$a;
.super Ld/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lc/a/d/d;


# direct methods
.method public constructor <init>(Lc/a/d/d;Ld/s;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lc/a/d/d$a;->a:Lc/a/d/d;

    .line 283
    invoke-direct {p0, p2}, Ld/h;-><init>(Ld/s;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lc/a/d/d$a;->a:Lc/a/d/d;

    invoke-static {v0}, Lc/a/d/d;->a(Lc/a/d/d;)Lc/a/b/g;

    move-result-object v0

    iget-object v1, p0, Lc/a/d/d$a;->a:Lc/a/d/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lc/a/b/g;->a(ZLc/a/d/h;)V

    .line 288
    invoke-super {p0}, Ld/h;->close()V

    return-void
.end method
