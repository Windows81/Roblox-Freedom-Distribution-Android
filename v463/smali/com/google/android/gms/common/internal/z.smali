.class public Lcom/google/android/gms/common/internal/z;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/z$b;,
        Lcom/google/android/gms/common/internal/z$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/common/internal/z$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/an;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/an;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/z;->a:Lcom/google/android/gms/common/internal/z$b;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/f/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/l;",
            ">(",
            "Lcom/google/android/gms/common/api/g<",
            "TR;>;)",
            "Lcom/google/android/gms/f/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/internal/aq;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/aq;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/z;->a(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/internal/z$a;)Lcom/google/android/gms/f/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/k;)Lcom/google/android/gms/f/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/l;",
            "T:",
            "Lcom/google/android/gms/common/api/k<",
            "TR;>;>(",
            "Lcom/google/android/gms/common/api/g<",
            "TR;>;TT;)",
            "Lcom/google/android/gms/f/g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/internal/ap;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/ap;-><init>(Lcom/google/android/gms/common/api/k;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/z;->a(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/internal/z$a;)Lcom/google/android/gms/f/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/internal/z$a;)Lcom/google/android/gms/f/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/l;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/g<",
            "TR;>;",
            "Lcom/google/android/gms/common/internal/z$a<",
            "TR;TT;>;)",
            "Lcom/google/android/gms/f/g<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/z;->a:Lcom/google/android/gms/common/internal/z$b;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/z;->a(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/internal/z$a;Lcom/google/android/gms/common/internal/z$b;)Lcom/google/android/gms/f/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/internal/z$a;Lcom/google/android/gms/common/internal/z$b;)Lcom/google/android/gms/f/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/l;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/g<",
            "TR;>;",
            "Lcom/google/android/gms/common/internal/z$a<",
            "TR;TT;>;",
            "Lcom/google/android/gms/common/internal/z$b;",
            ")",
            "Lcom/google/android/gms/f/g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/f/h;

    invoke-direct {v0}, Lcom/google/android/gms/f/h;-><init>()V

    new-instance v1, Lcom/google/android/gms/common/internal/ao;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/gms/common/internal/ao;-><init>(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/f/h;Lcom/google/android/gms/common/internal/z$a;Lcom/google/android/gms/common/internal/z$b;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/g$a;)V

    invoke-virtual {v0}, Lcom/google/android/gms/f/h;->a()Lcom/google/android/gms/f/g;

    move-result-object p0

    return-object p0
.end method
