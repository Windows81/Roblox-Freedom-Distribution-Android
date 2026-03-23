.class final Ld/i$b;
.super Ld/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ld/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ld/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/e",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ld/e;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ld/e",
            "<TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Ld/i;-><init>()V

    .line 175
    const-string v0, "name == null"

    invoke-static {p1, v0}, Ld/o;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ld/i$b;->a:Ljava/lang/String;

    .line 176
    iput-object p2, p0, Ld/i$b;->b:Ld/e;

    .line 177
    iput-boolean p3, p0, Ld/i$b;->c:Z

    .line 178
    return-void
.end method


# virtual methods
.method a(Ld/k;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/k;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    if-nez p2, :cond_0

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Ld/i$b;->a:Ljava/lang/String;

    iget-object v0, p0, Ld/i$b;->b:Ld/e;

    invoke-interface {v0, p2}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v2, p0, Ld/i$b;->c:Z

    invoke-virtual {p1, v1, v0, v2}, Ld/k;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
