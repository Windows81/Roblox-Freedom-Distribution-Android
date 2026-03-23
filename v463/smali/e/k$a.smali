.class Le/k$a;
.super Lc/ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lc/ab;

.field private final b:Lc/v;


# direct methods
.method constructor <init>(Lc/ab;Lc/v;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Lc/ab;-><init>()V

    .line 230
    iput-object p1, p0, Le/k$a;->a:Lc/ab;

    .line 231
    iput-object p2, p0, Le/k$a;->b:Lc/v;

    return-void
.end method


# virtual methods
.method public a()Lc/v;
    .locals 1

    .line 235
    iget-object v0, p0, Le/k$a;->b:Lc/v;

    return-object v0
.end method

.method public a(Ld/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Le/k$a;->a:Lc/ab;

    invoke-virtual {v0, p1}, Lc/ab;->a(Ld/d;)V

    return-void
.end method

.method public b()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Le/k$a;->a:Lc/ab;

    invoke-virtual {v0}, Lc/ab;->b()J

    move-result-wide v0

    return-wide v0
.end method
