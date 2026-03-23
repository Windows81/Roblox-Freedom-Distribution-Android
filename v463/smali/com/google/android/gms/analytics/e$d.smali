.class public Lcom/google/android/gms/analytics/e$d;
.super Lcom/google/android/gms/analytics/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/e$c<",
        "Lcom/google/android/gms/analytics/e$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/e$c;-><init>()V

    const-string v0, "&t"

    const-string v1, "timing"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/e$c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/e$c;

    return-void
.end method


# virtual methods
.method public a(J)Lcom/google/android/gms/analytics/e$d;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "&utt"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/analytics/e$c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/e$c;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$d;
    .locals 1

    const-string v0, "&utv"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/e$c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/e$c;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$d;
    .locals 1

    const-string v0, "&utc"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/e$c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/e$c;

    return-object p0
.end method
