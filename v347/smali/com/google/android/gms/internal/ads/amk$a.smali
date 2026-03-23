.class public final Lcom/google/android/gms/internal/ads/amk$a;
.super Lcom/google/android/gms/internal/ads/abd;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/amk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/amk$a$a;,
        Lcom/google/android/gms/internal/ads/amk$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abd",
        "<",
        "Lcom/google/android/gms/internal/ads/amk$a;",
        "Lcom/google/android/gms/internal/ads/amk$a$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acm;"
    }
.end annotation


# static fields
.field private static final zzakg:Lcom/google/android/gms/internal/ads/amk$a;

.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/acw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/acw",
            "<",
            "Lcom/google/android/gms/internal/ads/amk$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/amk$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/amk$a;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/amk$a;->zzakg:Lcom/google/android/gms/internal/ads/amk$a;

    const-class v0, Lcom/google/android/gms/internal/ads/amk$a;

    sget-object v1, Lcom/google/android/gms/internal/ads/amk$a;->zzakg:Lcom/google/android/gms/internal/ads/amk$a;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/abd;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/abd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abd;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/internal/ads/amk$a;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/amk$a;->zzakg:Lcom/google/android/gms/internal/ads/amk$a;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads/aml;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/amk$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/amk$a;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/amk$a$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/amk$a$a;-><init>(Lcom/google/android/gms/internal/ads/aml;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "\u0001\u0000"

    sget-object v2, Lcom/google/android/gms/internal/ads/amk$a;->zzakg:Lcom/google/android/gms/internal/ads/amk$a;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/amk$a;->a(Lcom/google/android/gms/internal/ads/ack;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/amk$a;->zzakg:Lcom/google/android/gms/internal/ads/amk$a;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/amk$a;->zzakh:Lcom/google/android/gms/internal/ads/acw;

    if-nez v0, :cond_0

    const-class v1, Lcom/google/android/gms/internal/ads/amk$a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/amk$a;->zzakh:Lcom/google/android/gms/internal/ads/acw;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/abd$b;

    sget-object v2, Lcom/google/android/gms/internal/ads/amk$a;->zzakg:Lcom/google/android/gms/internal/ads/amk$a;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/abd$b;-><init>(Lcom/google/android/gms/internal/ads/abd;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/amk$a;->zzakh:Lcom/google/android/gms/internal/ads/acw;

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
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    goto :goto_0

    nop

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
