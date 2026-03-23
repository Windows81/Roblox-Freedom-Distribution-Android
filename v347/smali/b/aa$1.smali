.class final Lb/aa$1;
.super Lb/aa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/aa;->a(Lb/u;Lc/f;)Lb/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/u;

.field final synthetic b:Lc/f;


# direct methods
.method constructor <init>(Lb/u;Lc/f;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lb/aa$1;->a:Lb/u;

    iput-object p2, p0, Lb/aa$1;->b:Lc/f;

    invoke-direct {p0}, Lb/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/u;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lb/aa$1;->a:Lb/u;

    return-object v0
.end method

.method public a(Lc/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lb/aa$1;->b:Lc/f;

    invoke-interface {p1, v0}, Lc/d;->b(Lc/f;)Lc/d;

    .line 72
    return-void
.end method

.method public b()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lb/aa$1;->b:Lc/f;

    invoke-virtual {v0}, Lc/f;->e()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
