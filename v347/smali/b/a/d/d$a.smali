.class Lb/a/d/d$a;
.super Lc/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lb/a/d/d;


# direct methods
.method public constructor <init>(Lb/a/d/d;Lc/s;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lb/a/d/d$a;->a:Lb/a/d/d;

    .line 283
    invoke-direct {p0, p2}, Lc/h;-><init>(Lc/s;)V

    .line 284
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

    .prologue
    .line 287
    iget-object v0, p0, Lb/a/d/d$a;->a:Lb/a/d/d;

    invoke-static {v0}, Lb/a/d/d;->a(Lb/a/d/d;)Lb/a/b/g;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lb/a/d/d$a;->a:Lb/a/d/d;

    invoke-virtual {v0, v1, v2}, Lb/a/b/g;->a(ZLb/a/d/h;)V

    .line 288
    invoke-super {p0}, Lc/h;->close()V

    .line 289
    return-void
.end method
