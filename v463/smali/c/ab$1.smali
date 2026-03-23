.class final Lc/ab$1;
.super Lc/ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/ab;->a(Lc/v;Ld/f;)Lc/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/v;

.field final synthetic b:Ld/f;


# direct methods
.method constructor <init>(Lc/v;Ld/f;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lc/ab$1;->a:Lc/v;

    iput-object p2, p0, Lc/ab$1;->b:Ld/f;

    invoke-direct {p0}, Lc/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lc/v;
    .locals 1

    .line 63
    iget-object v0, p0, Lc/ab$1;->a:Lc/v;

    return-object v0
.end method

.method public a(Ld/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lc/ab$1;->b:Ld/f;

    invoke-interface {p1, v0}, Ld/d;->b(Ld/f;)Ld/d;

    return-void
.end method

.method public b()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lc/ab$1;->b:Ld/f;

    invoke-virtual {v0}, Ld/f;->e()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
