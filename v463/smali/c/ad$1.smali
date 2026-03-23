.class final Lc/ad$1;
.super Lc/ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/ad;->a(Lc/v;JLd/e;)Lc/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/v;

.field final synthetic b:J

.field final synthetic c:Ld/e;


# direct methods
.method constructor <init>(Lc/v;JLd/e;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lc/ad$1;->a:Lc/v;

    iput-wide p2, p0, Lc/ad$1;->b:J

    iput-object p4, p0, Lc/ad$1;->c:Ld/e;

    invoke-direct {p0}, Lc/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lc/v;
    .locals 1

    .line 195
    iget-object v0, p0, Lc/ad$1;->a:Lc/v;

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 199
    iget-wide v0, p0, Lc/ad$1;->b:J

    return-wide v0
.end method

.method public d()Ld/e;
    .locals 1

    .line 203
    iget-object v0, p0, Lc/ad$1;->c:Ld/e;

    return-object v0
.end method
