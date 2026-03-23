.class public interface abstract Lc/a/c/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc/a/c/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lc/a/c/m$1;

    invoke-direct {v0}, Lc/a/c/m$1;-><init>()V

    sput-object v0, Lc/a/c/m;->a:Lc/a/c/m;

    return-void
.end method


# virtual methods
.method public abstract a(ILc/a/c/a;)V
.end method

.method public abstract a(ILd/e;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lc/a/c/f;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lc/a/c/f;",
            ">;Z)Z"
        }
    .end annotation
.end method
