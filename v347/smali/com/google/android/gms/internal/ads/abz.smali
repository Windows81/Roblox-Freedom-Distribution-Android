.class final Lcom/google/android/gms/internal/ads/abz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ade;


# static fields
.field private static final b:Lcom/google/android/gms/internal/ads/acj;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/acj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/aca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/aca;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/abz;->b:Lcom/google/android/gms/internal/ads/acj;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/acb;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/acj;

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/abc;->a()Lcom/google/android/gms/internal/ads/abc;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/ads/abz;->a()Lcom/google/android/gms/internal/ads/acj;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/acb;-><init>([Lcom/google/android/gms/internal/ads/acj;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/abz;-><init>(Lcom/google/android/gms/internal/ads/acj;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/acj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/abf;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/acj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abz;->a:Lcom/google/android/gms/internal/ads/acj;

    return-void
.end method

.method private static a()Lcom/google/android/gms/internal/ads/acj;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/acj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gms/internal/ads/abz;->b:Lcom/google/android/gms/internal/ads/acj;

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/aci;)Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/aci;->a()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/abd$e;->h:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/add;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/ads/add",
            "<TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/adf;->a(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abz;->a:Lcom/google/android/gms/internal/ads/acj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/acj;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/aci;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/aci;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/ads/abd;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/adf;->c()Lcom/google/android/gms/internal/ads/adw;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/aau;->a()Lcom/google/android/gms/internal/ads/aas;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/aci;->c()Lcom/google/android/gms/internal/ads/ack;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/acr;->a(Lcom/google/android/gms/internal/ads/adw;Lcom/google/android/gms/internal/ads/aas;Lcom/google/android/gms/internal/ads/ack;)Lcom/google/android/gms/internal/ads/acr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/adf;->a()Lcom/google/android/gms/internal/ads/adw;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/aau;->b()Lcom/google/android/gms/internal/ads/aas;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/aci;->c()Lcom/google/android/gms/internal/ads/ack;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/acr;->a(Lcom/google/android/gms/internal/ads/adw;Lcom/google/android/gms/internal/ads/aas;Lcom/google/android/gms/internal/ads/ack;)Lcom/google/android/gms/internal/ads/acr;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-class v0, Lcom/google/android/gms/internal/ads/abd;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/abz;->a(Lcom/google/android/gms/internal/ads/aci;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ads/acv;->b()Lcom/google/android/gms/internal/ads/act;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/abu;->b()Lcom/google/android/gms/internal/ads/abu;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/adf;->c()Lcom/google/android/gms/internal/ads/adw;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/aau;->a()Lcom/google/android/gms/internal/ads/aas;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/ach;->b()Lcom/google/android/gms/internal/ads/acf;

    move-result-object v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/aco;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/aci;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/abu;Lcom/google/android/gms/internal/ads/adw;Lcom/google/android/gms/internal/ads/aas;Lcom/google/android/gms/internal/ads/acf;)Lcom/google/android/gms/internal/ads/aco;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/acv;->b()Lcom/google/android/gms/internal/ads/act;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/abu;->b()Lcom/google/android/gms/internal/ads/abu;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/adf;->c()Lcom/google/android/gms/internal/ads/adw;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/ach;->b()Lcom/google/android/gms/internal/ads/acf;

    move-result-object v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/aco;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/aci;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/abu;Lcom/google/android/gms/internal/ads/adw;Lcom/google/android/gms/internal/ads/aas;Lcom/google/android/gms/internal/ads/acf;)Lcom/google/android/gms/internal/ads/aco;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/abz;->a(Lcom/google/android/gms/internal/ads/aci;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/ads/acv;->a()Lcom/google/android/gms/internal/ads/act;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/abu;->a()Lcom/google/android/gms/internal/ads/abu;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/adf;->a()Lcom/google/android/gms/internal/ads/adw;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/aau;->b()Lcom/google/android/gms/internal/ads/aas;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/ach;->a()Lcom/google/android/gms/internal/ads/acf;

    move-result-object v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/aco;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/aci;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/abu;Lcom/google/android/gms/internal/ads/adw;Lcom/google/android/gms/internal/ads/aas;Lcom/google/android/gms/internal/ads/acf;)Lcom/google/android/gms/internal/ads/aco;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/acv;->a()Lcom/google/android/gms/internal/ads/act;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/abu;->a()Lcom/google/android/gms/internal/ads/abu;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/adf;->b()Lcom/google/android/gms/internal/ads/adw;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/ach;->a()Lcom/google/android/gms/internal/ads/acf;

    move-result-object v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/aco;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/aci;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/abu;Lcom/google/android/gms/internal/ads/adw;Lcom/google/android/gms/internal/ads/aas;Lcom/google/android/gms/internal/ads/acf;)Lcom/google/android/gms/internal/ads/aco;

    move-result-object v0

    goto/16 :goto_0
.end method
