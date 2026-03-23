.class public abstract Lcom/google/android/gms/internal/ads/abd$c;
.super Lcom/google/android/gms/internal/ads/abd;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/abd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/abd$c",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/abd",
        "<TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/ads/acm;"
    }
.end annotation


# instance fields
.field protected zzdtz:Lcom/google/android/gms/internal/ads/aav;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/aav",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abd;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/aav;->a()Lcom/google/android/gms/internal/ads/aav;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abd$c;->zzdtz:Lcom/google/android/gms/internal/ads/aav;

    return-void
.end method
