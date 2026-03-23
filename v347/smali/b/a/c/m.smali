.class public interface abstract Lb/a/c/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb/a/c/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lb/a/c/m$1;

    invoke-direct {v0}, Lb/a/c/m$1;-><init>()V

    sput-object v0, Lb/a/c/m;->a:Lb/a/c/m;

    return-void
.end method


# virtual methods
.method public abstract a(ILb/a/c/a;)V
.end method

.method public abstract a(ILc/e;IZ)Z
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
            "Ljava/util/List",
            "<",
            "Lb/a/c/f;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lb/a/c/f;",
            ">;Z)Z"
        }
    .end annotation
.end method
