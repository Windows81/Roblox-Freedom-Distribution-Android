.class public Lmicrosoft/aspnet/signalr/client/CalendarSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/j;
.implements Lcom/google/gson/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/j",
        "<",
        "Ljava/util/Calendar;",
        ">;",
        "Lcom/google/gson/s",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final mInternalSerializer:Lmicrosoft/aspnet/signalr/client/DateSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lmicrosoft/aspnet/signalr/client/DateSerializer;

    invoke-direct {v0}, Lmicrosoft/aspnet/signalr/client/DateSerializer;-><init>()V

    sput-object v0, Lmicrosoft/aspnet/signalr/client/CalendarSerializer;->mInternalSerializer:Lmicrosoft/aspnet/signalr/client/DateSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/google/gson/k;Ljava/lang/reflect/Type;Lcom/google/gson/i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/o;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lmicrosoft/aspnet/signalr/client/CalendarSerializer;->deserialize(Lcom/google/gson/k;Ljava/lang/reflect/Type;Lcom/google/gson/i;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/google/gson/k;Ljava/lang/reflect/Type;Lcom/google/gson/i;)Ljava/util/Calendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/o;
        }
    .end annotation

    .prologue
    .line 26
    sget-object v0, Lmicrosoft/aspnet/signalr/client/CalendarSerializer;->mInternalSerializer:Lmicrosoft/aspnet/signalr/client/DateSerializer;

    const-class v1, Ljava/util/Date;

    invoke-virtual {v0, p1, v1, p3}, Lmicrosoft/aspnet/signalr/client/DateSerializer;->deserialize(Lcom/google/gson/k;Ljava/lang/reflect/Type;Lcom/google/gson/i;)Ljava/util/Date;

    move-result-object v0

    .line 28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 31
    return-object v1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/r;)Lcom/google/gson/k;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2, p3}, Lmicrosoft/aspnet/signalr/client/CalendarSerializer;->serialize(Ljava/util/Calendar;Ljava/lang/reflect/Type;Lcom/google/gson/r;)Lcom/google/gson/k;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/util/Calendar;Ljava/lang/reflect/Type;Lcom/google/gson/r;)Lcom/google/gson/k;
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lmicrosoft/aspnet/signalr/client/CalendarSerializer;->mInternalSerializer:Lmicrosoft/aspnet/signalr/client/DateSerializer;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const-class v2, Ljava/util/Date;

    invoke-virtual {v0, v1, v2, p3}, Lmicrosoft/aspnet/signalr/client/DateSerializer;->serialize(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/google/gson/r;)Lcom/google/gson/k;

    move-result-object v0

    return-object v0
.end method
