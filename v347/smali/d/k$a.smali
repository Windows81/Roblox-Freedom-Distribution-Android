.class Ld/k$a;
.super Lb/aa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lb/aa;

.field private final b:Lb/u;


# direct methods
.method constructor <init>(Lb/aa;Lb/u;)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Lb/aa;-><init>()V

    .line 230
    iput-object p1, p0, Ld/k$a;->a:Lb/aa;

    .line 231
    iput-object p2, p0, Ld/k$a;->b:Lb/u;

    .line 232
    return-void
.end method


# virtual methods
.method public a()Lb/u;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Ld/k$a;->b:Lb/u;

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
    .line 243
    iget-object v0, p0, Ld/k$a;->a:Lb/aa;

    invoke-virtual {v0, p1}, Lb/aa;->a(Lc/d;)V

    .line 244
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
    .line 239
    iget-object v0, p0, Ld/k$a;->a:Lb/aa;

    invoke-virtual {v0}, Lb/aa;->b()J

    move-result-wide v0

    return-wide v0
.end method
