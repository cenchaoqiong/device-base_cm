.class public abstract Landroid/service/fingerprint/IFingerprintService$Stub;
.super Landroid/os/Binder;
.source "IFingerprintService.java"

# interfaces
.implements Landroid/service/fingerprint/IFingerprintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/fingerprint/IFingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/fingerprint/IFingerprintService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.fingerprint.IFingerprintService"

.field static final TRANSACTION_authenticate:I = 0x1

.field static final TRANSACTION_cancel:I = 0x3

.field static final TRANSACTION_enroll:I = 0x2

.field static final TRANSACTION_getEnrolledFingerprints:I = 0x8

.field static final TRANSACTION_getNumEnrollmentSteps:I = 0xa

.field static final TRANSACTION_getState:I = 0xb

.field static final TRANSACTION_remove:I = 0x4

.field static final TRANSACTION_setFingerprintName:I = 0x9

.field static final TRANSACTION_setWakeup:I = 0x7

.field static final TRANSACTION_startListening:I = 0x5

.field static final TRANSACTION_stopListening:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.fingerprint.IFingerprintService"

    invoke-virtual {p0, p0, v0}, Landroid/service/fingerprint/IFingerprintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/fingerprint/IFingerprintService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.service.fingerprint.IFingerprintService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/service/fingerprint/IFingerprintService;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/service/fingerprint/IFingerprintService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/fingerprint/IFingerprintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    const-string v8, "android.service.fingerprint.IFingerprintService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v9, "android.service.fingerprint.IFingerprintService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    move v1, v7

    .local v1, "_arg2":Z
    :goto_1
    invoke-virtual {p0, v0, v2, v1}, Landroid/service/fingerprint/IFingerprintService$Stub;->authenticate(Landroid/os/IBinder;IZ)V

    goto :goto_0

    .end local v1    # "_arg2":Z
    :cond_0
    move v1, v8

    goto :goto_1

    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :sswitch_2
    const-string v8, "android.service.fingerprint.IFingerprintService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg2":I
    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/service/fingerprint/IFingerprintService$Stub;->enroll(Landroid/os/IBinder;JI)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg2":I
    .end local v2    # "_arg1":J
    :sswitch_3
    const-string v8, "android.service.fingerprint.IFingerprintService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/service/fingerprint/IFingerprintService$Stub;->cancel(Landroid/os/IBinder;I)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :sswitch_4
    const-string v8, "android.service.fingerprint.IFingerprintService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg2":I
    invoke-virtual {p0, v0, v2, v1}, Landroid/service/fingerprint/IFingerprintService$Stub;->remove(Landroid/os/IBinder;II)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg2":I
    .end local v2    # "_arg1":I
    :sswitch_5
    const-string v8, "android.service.fingerprint.IFingerprintService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/fingerprint/IFingerprintServiceReceiver;

    move-result-object v2

    .local v2, "_arg1":Landroid/service/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg2":I
    invoke-virtual {p0, v0, v2, v1}, Landroid/service/fingerprint/IFingerprintService$Stub;->startListening(Landroid/os/IBinder;Landroid/service/fingerprint/IFingerprintServiceReceiver;I)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg2":I
    .end local v2    # "_arg1":Landroid/service/fingerprint/IFingerprintServiceReceiver;
    :sswitch_6
    const-string v8, "android.service.fingerprint.IFingerprintService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/service/fingerprint/IFingerprintService$Stub;->stopListening(Landroid/os/IBinder;I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :sswitch_7
    const-string v9, "android.service.fingerprint.IFingerprintService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    move v1, v7

    .local v1, "_arg2":Z
    :goto_2
    invoke-virtual {p0, v0, v2, v1}, Landroid/service/fingerprint/IFingerprintService$Stub;->setWakeup(Landroid/os/IBinder;IZ)V

    goto/16 :goto_0

    .end local v1    # "_arg2":Z
    :cond_1
    move v1, v8

    goto :goto_2

    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :sswitch_8
    const-string v8, "android.service.fingerprint.IFingerprintService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/service/fingerprint/IFingerprintService$Stub;->getEnrolledFingerprints(Landroid/os/IBinder;I)Ljava/util/List;

    move-result-object v6

    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :sswitch_9
    const-string v9, "android.service.fingerprint.IFingerprintService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg3":I
    invoke-virtual {p0, v0, v2, v1, v4}, Landroid/service/fingerprint/IFingerprintService$Stub;->setFingerprintName(Landroid/os/IBinder;ILjava/lang/String;I)Z

    move-result v5

    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_2

    move v8, v7

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg2":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :sswitch_a
    const-string v8, "android.service.fingerprint.IFingerprintService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/service/fingerprint/IFingerprintService$Stub;->getNumEnrollmentSteps(Landroid/os/IBinder;)I

    move-result v5

    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_result":I
    :sswitch_b
    const-string v8, "android.service.fingerprint.IFingerprintService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/fingerprint/IFingerprintService$Stub;->getState()I

    move-result v5

    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
