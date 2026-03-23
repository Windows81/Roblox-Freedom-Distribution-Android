.class public final Lcom/google/android/gms/internal/ads/uw;
.super Lcom/google/android/gms/internal/ads/abd;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/uw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abd",
        "<",
        "Lcom/google/android/gms/internal/ads/uw;",
        "Lcom/google/android/gms/internal/ads/uw$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acm;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/acw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/acw",
            "<",
            "Lcom/google/android/gms/internal/ads/uw;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdik:Lcom/google/android/gms/internal/ads/uw;


# instance fields
.field private zzdih:I

.field private zzdii:Lcom/google/android/gms/internal/ads/va;

.field private zzdij:Lcom/google/android/gms/internal/ads/wm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/uw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/uw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/uw;->zzdik:Lcom/google/android/gms/internal/ads/uw;

    const-class v0, Lcom/google/android/gms/internal/ads/uw;

    sget-object v1, Lcom/google/android/gms/internal/ads/uw;->zzdik:Lcom/google/android/gms/internal/ads/uw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/abd;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/abd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abd;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/uw;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/abj;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/uw;->zzdik:Lcom/google/android/gms/internal/ads/uw;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/abd;->a(Lcom/google/android/gms/internal/ads/abd;Lcom/google/android/gms/internal/ads/zv;)Lcom/google/android/gms/internal/ads/abd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/uw;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/uw;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/uw;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/uw;Lcom/google/android/gms/internal/ads/va;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/uw;->a(Lcom/google/android/gms/internal/ads/va;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/uw;Lcom/google/android/gms/internal/ads/wm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/uw;->a(Lcom/google/android/gms/internal/ads/wm;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/va;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uw;->zzdii:Lcom/google/android/gms/internal/ads/va;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/wm;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uw;->zzdij:Lcom/google/android/gms/internal/ads/wm;

    return-void
.end method

.method private final b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/uw;->zzdih:I

    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/ads/uw$a;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads/uw;->zzdik:Lcom/google/android/gms/internal/ads/uw;

    sget v1, Lcom/google/android/gms/internal/ads/abd$e;->e:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/abd;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abd$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/uw$a;

    return-object v0
.end method

.method static synthetic e()Lcom/google/android/gms/internal/ads/uw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/uw;->zzdik:Lcom/google/android/gms/internal/ads/uw;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/uw;->zzdih:I

    return v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/google/android/gms/internal/ads/ux;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/uw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/uw;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/uw$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/uw$a;-><init>(Lcom/google/android/gms/internal/ads/ux;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzdih"

    aput-object v2, v0, v1

    const-string v1, "zzdii"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "zzdij"

    aput-object v2, v0, v1

    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t"

    sget-object v2, Lcom/google/android/gms/internal/ads/uw;->zzdik:Lcom/google/android/gms/internal/ads/uw;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/uw;->a(Lcom/google/android/gms/internal/ads/ack;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/uw;->zzdik:Lcom/google/android/gms/internal/ads/uw;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/uw;->zzakh:Lcom/google/android/gms/internal/ads/acw;

    if-nez v0, :cond_0

    const-class v1, Lcom/google/android/gms/internal/ads/uw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/uw;->zzakh:Lcom/google/android/gms/internal/ads/acw;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/abd$b;

    sget-object v2, Lcom/google/android/gms/internal/ads/uw;->zzdik:Lcom/google/android/gms/internal/ads/uw;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/abd$b;-><init>(Lcom/google/android/gms/internal/ads/abd;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/uw;->zzakh:Lcom/google/android/gms/internal/ads/acw;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final b()Lcom/google/android/gms/internal/ads/va;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uw;->zzdii:Lcom/google/android/gms/internal/ads/va;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/va;->e()Lcom/google/android/gms/internal/ads/va;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uw;->zzdii:Lcom/google/android/gms/internal/ads/va;

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/wm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uw;->zzdij:Lcom/google/android/gms/internal/ads/wm;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/wm;->e()Lcom/google/android/gms/internal/ads/wm;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uw;->zzdij:Lcom/google/android/gms/internal/ads/wm;

    goto :goto_0
.end method
