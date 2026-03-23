.class public interface abstract Lb/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lb/m$1;

    invoke-direct {v0}, Lb/m$1;-><init>()V

    sput-object v0, Lb/m;->a:Lb/m;

    return-void
.end method


# virtual methods
.method public abstract a(Lb/s;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/s;",
            ")",
            "Ljava/util/List",
            "<",
            "Lb/l;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lb/s;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/s;",
            "Ljava/util/List",
            "<",
            "Lb/l;",
            ">;)V"
        }
    .end annotation
.end method
