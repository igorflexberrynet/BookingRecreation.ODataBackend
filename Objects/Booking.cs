﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IIS.BookingRecreation
{
    using System;
    using System.Xml;
    using ICSSoft.STORMNET;
    
    
    //  *** Start programmer edit section *** (Using statements)

    //  *** End programmer edit section *** (Using statements)


    /// <summary>
    /// Booking.
    /// </summary>
    //  *** Start programmer edit section *** (Booking CustomAttributes)

    //  *** End programmer edit section *** (Booking CustomAttributes)
    [PublishName("Booking")]
    [AutoAltered()]
    [Caption("Бронирование")]
    [AccessType(ICSSoft.STORMNET.AccessType.none)]
    [View("BookingE", new string[] {
            "DateStart as \'Date start\'",
            "DateEnd as \'Date end\'",
            "Recreation as \'Recreation\'",
            "Recreation.Phone as \'Phone\'",
            "Client as \'Client\'",
            "Client.Phone as \'Phone\'"})]
    [View("BookingL", new string[] {
            "DateStart as \'Date start\'",
            "DateEnd as \'Date end\'",
            "Recreation.Phone as \'Phone\'",
            "Client.Phone as \'Phone\'"})]
    public class Booking : ICSSoft.STORMNET.DataObject
    {
        
        private System.DateTime fDateStart;
        
        private System.DateTime fDateEnd;
        
        private IIS.BookingRecreation.Recreation fRecreation;
        
        private IIS.BookingRecreation.ApplicationUser fClient;
        
        //  *** Start programmer edit section *** (Booking CustomMembers)

        //  *** End programmer edit section *** (Booking CustomMembers)

        
        /// <summary>
        /// DateStart.
        /// </summary>
        //  *** Start programmer edit section *** (Booking.DateStart CustomAttributes)

        //  *** End programmer edit section *** (Booking.DateStart CustomAttributes)
        public virtual System.DateTime DateStart
        {
            get
            {
                //  *** Start programmer edit section *** (Booking.DateStart Get start)

                //  *** End programmer edit section *** (Booking.DateStart Get start)
                System.DateTime result = this.fDateStart;
                //  *** Start programmer edit section *** (Booking.DateStart Get end)

                //  *** End programmer edit section *** (Booking.DateStart Get end)
                return result;
            }
            set
            {
                //  *** Start programmer edit section *** (Booking.DateStart Set start)

                //  *** End programmer edit section *** (Booking.DateStart Set start)
                this.fDateStart = value;
                //  *** Start programmer edit section *** (Booking.DateStart Set end)

                //  *** End programmer edit section *** (Booking.DateStart Set end)
            }
        }
        
        /// <summary>
        /// DateEnd.
        /// </summary>
        //  *** Start programmer edit section *** (Booking.DateEnd CustomAttributes)

        //  *** End programmer edit section *** (Booking.DateEnd CustomAttributes)
        public virtual System.DateTime DateEnd
        {
            get
            {
                //  *** Start programmer edit section *** (Booking.DateEnd Get start)

                //  *** End programmer edit section *** (Booking.DateEnd Get start)
                System.DateTime result = this.fDateEnd;
                //  *** Start programmer edit section *** (Booking.DateEnd Get end)

                //  *** End programmer edit section *** (Booking.DateEnd Get end)
                return result;
            }
            set
            {
                //  *** Start programmer edit section *** (Booking.DateEnd Set start)

                //  *** End programmer edit section *** (Booking.DateEnd Set start)
                this.fDateEnd = value;
                //  *** Start programmer edit section *** (Booking.DateEnd Set end)

                //  *** End programmer edit section *** (Booking.DateEnd Set end)
            }
        }
        
        /// <summary>
        /// Booking.
        /// </summary>
        //  *** Start programmer edit section *** (Booking.Recreation CustomAttributes)

        //  *** End programmer edit section *** (Booking.Recreation CustomAttributes)
        [NotNull()]
        public virtual IIS.BookingRecreation.Recreation Recreation
        {
            get
            {
                //  *** Start programmer edit section *** (Booking.Recreation Get start)

                //  *** End programmer edit section *** (Booking.Recreation Get start)
                IIS.BookingRecreation.Recreation result = this.fRecreation;
                //  *** Start programmer edit section *** (Booking.Recreation Get end)

                //  *** End programmer edit section *** (Booking.Recreation Get end)
                return result;
            }
            set
            {
                //  *** Start programmer edit section *** (Booking.Recreation Set start)

                //  *** End programmer edit section *** (Booking.Recreation Set start)
                this.fRecreation = value;
                //  *** Start programmer edit section *** (Booking.Recreation Set end)

                //  *** End programmer edit section *** (Booking.Recreation Set end)
            }
        }
        
        /// <summary>
        /// Booking.
        /// </summary>
        //  *** Start programmer edit section *** (Booking.Client CustomAttributes)

        //  *** End programmer edit section *** (Booking.Client CustomAttributes)
        [NotNull()]
        public virtual IIS.BookingRecreation.ApplicationUser Client
        {
            get
            {
                //  *** Start programmer edit section *** (Booking.Client Get start)

                //  *** End programmer edit section *** (Booking.Client Get start)
                IIS.BookingRecreation.ApplicationUser result = this.fClient;
                //  *** Start programmer edit section *** (Booking.Client Get end)

                //  *** End programmer edit section *** (Booking.Client Get end)
                return result;
            }
            set
            {
                //  *** Start programmer edit section *** (Booking.Client Set start)

                //  *** End programmer edit section *** (Booking.Client Set start)
                this.fClient = value;
                //  *** Start programmer edit section *** (Booking.Client Set end)

                //  *** End programmer edit section *** (Booking.Client Set end)
            }
        }
        
        /// <summary>
        /// Class views container.
        /// </summary>
        public class Views
        {
            
            /// <summary>
            /// "BookingE" view.
            /// </summary>
            public static ICSSoft.STORMNET.View BookingE
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("BookingE", typeof(IIS.BookingRecreation.Booking));
                }
            }
            
            /// <summary>
            /// "BookingL" view.
            /// </summary>
            public static ICSSoft.STORMNET.View BookingL
            {
                get
                {
                    return ICSSoft.STORMNET.Information.GetView("BookingL", typeof(IIS.BookingRecreation.Booking));
                }
            }
        }
    }
}
